##!/bin/bash
#!/bin/zsh
# 
# Basic environment variables export script. Actual secrets are not included,
# please create Organization Admin API key to use within this terraform 
# project.
#
# Author: Jerry Gilyeat (jgilyeat@confluent.io)
# Copyright Confluent, Inc, 2023
export TF_VAR_user_email=$USER_EMAIL

# Expects the .secrets file to be the downloaded API key from Confluent. 
# This file is explicitly NOT included in this repository.
export TF_VAR_cloud_api_key=`grep -A 1 key\: .secrets | grep -v key`
export TF_VAR_cloud_api_secret=`grep -A 1 secret\: .secrets | grep -v secret`
