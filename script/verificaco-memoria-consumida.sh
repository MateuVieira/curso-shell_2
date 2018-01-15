#!/bin/bash

memoria_total=$(free | grep -i men | awk '{ print $2 }')

memoria_consumida=$(free | grep -i men | awk '{ print $3 }')
