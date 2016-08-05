#!/bin/bash

# -- jojo --
# description: generate httpasswd file
# param: user - username
# param: pwd - password
# filtered_param: pwd - provent print password to log
# -- jojo --

echo "jojo_return_value user=$USER"
pwdfile=$(htpasswd -nb $USER $PWD); echo "jojo_return_value htpasswd=$pwdfile"
exit 0
