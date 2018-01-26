#! /bin/bash
# set_javahome.sh

echo "export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home" >> ~/.profile
echo "export PATH=$JAVA_HOME/bin:$PATH" >> ~/.profile
echo "export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home" >> ~/.bash_profile
echo "export PATH=$JAVA_HOME/bin:$PATH" >> ~/.bash_profile

