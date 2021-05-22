#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl enable fundoo
sudo rm /etc/nginx/sites-enabled/default
sudo nginx -t
