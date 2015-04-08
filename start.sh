if [ "$FLYWAY_URL" = "" ]; then
	FLYWAY_URL="jdbc:mysql://db/$DB_ENV_MYSQL_DATABASE"
fi

flyway-3.2.1/flyway $FLYWAY_COMMAND -url=$FLYWAY_URL -user=$DB_ENV_MYSQL_USER -password=$DB_ENV_MYSQL_PASSWORD -baselineOnMigrate=true -locations=filesystem:/migrations
