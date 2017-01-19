#!/bin/bash
set -e -x

# check if vagrant can run OK
vagrant status

# bring VM up if it has never been created
vmexists=`vagrant status | grep 'not created' | wc -l`
if [ $vmexists -ne 0 ]; then
  vagrant up
fi

# provision
vagrant reload --provision

# reboot with new kernel
vagrant reload
