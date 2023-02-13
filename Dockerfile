FROM liquibase/liquibase

ADD ./changelog.xml /liquibase/changelog

CMD ["sh", "-c", "docker-entrypoint.sh --url=${URL} --username=${USERNAME} --password=${PASSWORD} --classpath=/liquibase/changelog --changeLogFile=relative/changelog.xml update"]