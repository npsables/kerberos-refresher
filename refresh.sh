#!/bin/bash

REFRESH_INTERVAL=${REFRESH_INTERVAL:-"60"}
while true; do
    kinit -kt ${KERBEROS_KEYTAB_PATH} ${KERBEROS_PRINCIPAL}
	sleep $REFRESH_INTERVAL
done