#mvn package;
#cd ../hello-webclient;
#mvn package;
#cd ../hello-appclient;
#mvn package;
#cd ../helloservice-war;
rm -f ../../glassfish4/glassfish/domains/domain1/autodeploy/helloservice-war.war;
cp -f target/helloservice-war.war ../../glassfish4/glassfish/domains/domain1/autodeploy/;
../../glassfish4/bin/asadmin stop-domain;
../../glassfish4/bin/asadmin start-domain;
