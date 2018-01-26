#!/bin/sh

while [ ! -f /var/db/.AppleSetupDone ]
do
	echo "Setup Assistant not complete, waiting 5 more seconds."
	sleep 5
done

echo "Setup Assistant complete, ending script."
echo `date`