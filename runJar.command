#!/bin/bash
if [ ! -d /var/lock ]; then
	mkdir /var/lock
fi
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR
java -Djava.library.path="." -Djava.io.tmpdir="." -jar $DIR/EchoSimulation-1.0-SNAPSHOT-jar-with-dependencies.jar 
