#!/bin/bash
sudo rm -f requirements.txt
sudo rm -rf /django/new_chatapp/*
sudo rm -rf /django/new_chatapp/.github/workflows/*

sudo systemctl stop fundoo
