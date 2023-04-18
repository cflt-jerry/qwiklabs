#!/bin/bash
# 
# Basic environment variables export script. Acutal secrets are not included,
# please create Organization Admin API key to use within this terraform 
# project.
#
# Author: Jerry Gilyeat (jgilyeat@confluent.io)
# Copyright Confluent, Inc, 2023
export TF_VAR_user_email=$USER_EMAIL
export TF_VAR_cloud_api_key=
export TF_VAR_cloud_api_secret=
