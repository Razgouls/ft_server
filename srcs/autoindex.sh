#!/bin/bash
if [ $AUTOINDEX -ne 0 ]
then
	sed -i -e "s/autoindex off/autoindex on/g" nginx_conf
fi
