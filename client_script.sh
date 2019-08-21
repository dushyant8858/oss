#!/bin/bash

echo $'[webservers]\nproduction\ntest\n' > '/etc/ansible/hosts'

echo $'192.168.33.20 production\n192.168.33.30 test\n 192.168.33.50 jenkins\n' > '/etc/hosts'	