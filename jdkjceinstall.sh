#!/bin/bash

rm -r /Library/Java/JavaVirtualMachines/jdk1.8.0_11*
rm -r /Library/Java/JavaVirtualMachines/jdk1.8.0_13*
rm -r /Library/Java/JavaVirtualMachines/jdk1.8.0_14*
#rm /Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/jre/lib/security/US_export_policy.jar
#rm /Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/jre/lib/security/local_policy.jar
#cd /Users/Shared/UnlimitedJCEPolicyJDK8/
#cp -f *.jar /Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/jre/lib/security/
echo "crypto.policy=unlimited" >> /Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home/jre/lib/security/java.security

rm -f ~/.profile
rm -f ~/.bash_profile
echo "export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home" >> ~/.profile
echo "export PATH=$JAVA_HOME/bin:$PATH" >> ~/.profile
echo "export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home" >> ~/.bash_profile
echo "export PATH=$JAVA_HOME/bin:$PATH" >> ~/.bash_profile
