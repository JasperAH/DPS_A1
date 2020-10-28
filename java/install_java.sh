#!/bin/bash

tar -zvxf jre-8u261-linux-x64.tar.gz

echo "export JAVA_HOME=/home/$USER/DPS_A1/java/jre1.8.0_261/bin/java" >> ~/.bashrc
echo "export PATH=/home/$USER/DPS_A1/java/jre1.8.0_261/bin:$PATH" >> ~/.bashrc

source ~/.bashrc
