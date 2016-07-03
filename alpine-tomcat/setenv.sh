if [ "$1" = "jpda" ]; then
    CATALINA_OPTS="${CATALINA_OPTS} -Dcom.sun.management.jmxremote="
    CATALINA_OPTS="${CATALINA_OPTS} -Dcom.sun.management.jmxremote.port=1898 -Dcom.sun.management.jmxremote.rmi.port=1898 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
    CATALINA_OPTS="${CATALINA_OPTS} -Djava.rmi.server.hostname=191.168.99.100"
fi
