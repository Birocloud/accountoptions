#!/bin/bash

# Run account options service in docker:
cd $accountoptions
cp $accountoptionstargetbirocloud/*.jar .
docker build -t accountoptions-api:1.00 .
rm *.jar