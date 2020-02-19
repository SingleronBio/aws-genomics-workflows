#!/bin/bash

# this is a shim for backwards compatibility for releases <2.6.0
EBS_AUTOSCALE_VERSION=$(curl --silent "https://api.github.com/repos/awslabs/amazon-ebs-autoscale/releases/latest" | jq -r .tag_name)
cd /opt && git clone https://github.com/awslabs/amazon-ebs-autoscale.git
cd /opt/amazon-ebs-autoscale && git checkout $EBS_AUTOSCALE_VERSION
sh /opt/amazon-ebs-autoscale/install.sh $scratchPath /dev/sdc 2>&1