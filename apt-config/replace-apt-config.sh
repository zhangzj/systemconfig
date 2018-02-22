#!/bin/bash

APT_CONFIG_FILE_PATH=/etc/apt

if [ -f "$APT_CONFIG_FILE_PATH/sources.list" ]
then
mv $APT_CONFIG_FILE_PATH/sources.list $APT_CONFIG_FILE_PATH/sources.list.zzj.bk
else
echo "$APT_CONFIG_FILE_PATH/sources.list not found."
fi

if [ -f "$APT_CONFIG_FILE_PATH/sources.list.d/aliyun.list" ]
then
rm $APT_CONFIG_FILE_PATH/sources.list.d/aliyun.list
else
echo "update in aliyun.list"
fi

cp aliyun.list $APT_CONFIG_FILE_PATH/sources.list

apt update
