#!/bin/bash
if [ ! -d /var/lock ]; then
	sudo mkdir /var/lock
	sudo chmod a+rw /var/lock
fi
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
java -Djava.library.path="." -Djava.io.tmpdir="." -jar $DIR/EchoSimulation-1.0-SNAPSHOT-jar-with-dependencies.jar 
