#!/bin/bash

cd /opt/linbpq

if [ ! -f "socat.cfg" ]; then
  echo "socat.cfg doesn't exist, skipping"
  exit
fi

socat_instances=()

while read line
do
   
   # A crude way of ignoring comments
   if [[  ${line:0:1} == "#" ]]; then
     continue
   fi

   # Split the csv with a comma delimitter and insert into an array
   IFS=',' read -ra params <<< "$line"

   # Append the socat command to an array
   socat_instances+=("tcp-l:${params[0]},reuseaddr,fork tcp:${params[1]}")

done < socat.cfg

if [ ${#socat_instances[@]} == 0 ]; then
  echo "Unable to parse any socat instances, skipping"
  exit
fi

for instance in "${socat_instances[@]}"
do
     echo "Starting: socat $instance"
     eval "socat $instance" &
done

