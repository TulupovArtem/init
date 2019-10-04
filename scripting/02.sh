#!/bin/bash
read USER
killall -s 9 $USER
userdel -r -f $USER
