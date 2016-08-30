#!/bin/bash

. ${WORKDIR}/scan.properties

cd ${WORKDIR}/cx
cd $(ls -d */|head -n 1)
java -Xmx1024m -cp :./config/cx_console.properties -jar CxConsolePlugin-7.5.0-20160207-1609.jar scan $@ \


