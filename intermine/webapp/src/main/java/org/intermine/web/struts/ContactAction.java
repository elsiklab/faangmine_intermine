package org.intermine.web.struts;

/*
 * Copyright (C) 2002-2022 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.text.MessageFormat;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.util.MessageResources;
import org.intermine.util.MailUtils;
import org.intermine.web.logic.session.SessionMethods;
/**
 * Action handles submission of user feedback form.
 *
 * @author Thomas Riley
 */
public class ContactAction extends InterMineAction
{
    protected static final Logger LOG = Logger.getLogger(ContactAction.class);

    /**
     * Method called when user has submitted valid feedback form
     *
     * @param mapping The ActionMapping used to select this instance
     * @param form The optional ActionForm bean for this request (if any)
     * @param request The HTTP request we are processing
     * @param response The HTTP response we are creating
     * @return an ActionForward object defining where control goes next
     * @exception Exception if the application business logic throws
     *  an exception
     */
    @Override
    public ActionForward execute(ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response)
        throws Exception {
        HttpSession session = request.getSession();
        ContactForm ff = (ContactForm) form;
        try {
            Properties webProperties = SessionMethods.getWebProperties(session.getServletContext());
            MessageResources strings = getResources(request);

            // final String user = webProperties.getProperty("mail.smtp.user");
            String from = ff.getMonkey();
            String subject = ff.getSubject();
            String body = MessageFormat.format(strings.getMessage("contact.template"),
                                new Object[] {ff.getName(), ff.getMonkey(), ff.getMessage()});
            String dest = webProperties.getProperty("feedback.destination");

            MailUtils.email(dest, subject, body, from, webProperties);
            recordMessage(new ActionMessage("contact.sent"), request);

            // avoid showing form
            request.setAttribute("sent", Boolean.TRUE);
            ff.reset(mapping, request); // clear bean (we don't clear it if an error occurs)

        } catch (Exception e) {
            request.setAttribute("response", e);
            recordError(new ActionMessage("contact.failed", e), request, e, LOG);
        }

        return mapping.findForward("contact");
    }

}
