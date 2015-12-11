#!/bin/bash

#comment all un-commented lines

sed -i 's/^[^#]\(.*\)/#\1/' "$1"
