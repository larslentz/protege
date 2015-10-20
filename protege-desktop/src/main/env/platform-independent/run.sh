#!/bin/sh

cd `dirname $0`

java -Xmx${conf.mem.xmx} -Xms${conf.mem.xms} \
     -Dlog4j.configuration=${conf.log4j.location} \
     -Dlogback.configurationFile=conf/logback.xml \
     -DentityExpansionLimit=100000000 \
     -Dfile.encoding=UTF-8 \
     -classpath bundles/guava.jar:bundles/logback-classic.jar:bundles/logback-core.jar:bundles/slf4j-api.jar:bin/org.apache.felix.main.jar:bin/protege-launcher.jar \
     $CMD_OPTIONS org.protege.osgi.framework.Launcher $1



