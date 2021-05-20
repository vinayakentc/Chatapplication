#!/bin/bash

pip3 install -r /django/new_chatapp/fundoo requirements.txt

python3  /django/new_chatapp/fundoo manage.py makemigrations

python3  /django/new_chatapp/fundoo manage.py migrate

sudo systemctl stop fundoo.service






