#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#

export XXX="$XXX/xsession"

/bin/bash --login -i ~/.xinitrc

