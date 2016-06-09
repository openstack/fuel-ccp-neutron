#!/bin/bash

# Only update permissions if permissions need to be updated
if [[ $(stat -c %U:%G /var/lib/neutron/ccp) != "neutron:neutron" ]]; then
    sudo chown neutron: /var/lib/neutron/ccp
fi
