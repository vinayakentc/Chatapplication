#!/bin/bash
sudo rm -f requirements.txt
sudo rm -rf /django/new_chatapp/*
sudo rm -f /django/new_chatapp/.github/workflows/pythonapp.yml

sudo systemctl stop fundoo
