#!/bin/bash
	sudo systemctl daemon-reload
	sudo systemctl start fundoo.service
	sudo systemctl enable fundoo.service

