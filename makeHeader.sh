#!/bin/bash

echo -e "/*"
today=$(date +%m/%d/%Y)
name=$1
description=$2

echo -e "Author: $name"
echo -e "Date: $today"
echo -e "Description: $description"
echo "*/"
