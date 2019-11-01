#!/bin/bash
ant -Daction=create-references -v
sudo systemctl restart postgresql-9.5
sleep 5m
ant -Daction=transfer-sequences -v
sudo systemctl restart postgresql-9.5
sleep 5m
