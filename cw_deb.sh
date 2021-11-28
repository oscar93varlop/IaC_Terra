#!/bin/bash -xe
aws s3 cp s3://cw-soyyo/cw_deb.sh .
chmod +x cw_deb.sh 
./cw_deb.sh 