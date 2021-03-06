#!/bin/bash

echo "Killing Scorex processes"
pids=`cat /home/ubuntu/log/scorex.pid`

kill_pids=""

for pid in $pids; do
	echo "Killing $pid"
	kill $pid
	kill_pids="$kill_pids $!"
done

pkill java

echo "Waiting for processes to exit"
for pid in $kill_pids; do
	wait $pid
done

echo "All process exited"

rm -f /home/ubuntu/log/scorex.pid

