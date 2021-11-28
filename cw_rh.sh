#!/bin/bash -xe
aws s3 cp s3://cw-soyyo/cw_rh.sh .
chmod +x cw_rh.sh 
sh cw_rh.sh 
