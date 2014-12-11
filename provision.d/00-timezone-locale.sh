#!/bin/bash
set -e

timedatectl set-timezone Asia/Chongqing
locale --all-locales | fgrep zh_CN.utf8 > /dev/null || locale-gen zh_CN.utf8
