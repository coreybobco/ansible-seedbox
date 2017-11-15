#/bin/#!/usr/bin/env bash
ssh-copy-id root@37.59.50.207
sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
