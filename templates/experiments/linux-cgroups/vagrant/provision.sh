#!/bin/bash
set -e -x

# bring VM up if it has never been created
vmexists=`vagrant status | grep 'not created' | wc -l`
if [ $vmexists -ne 1 ]; then
  vagrant up
fi

# provision
vagrant reload --provision

# reboot with new kernel
vagrant reload
