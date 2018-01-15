#!/bin/bash

cd ..

cat apache.log | grep $1
