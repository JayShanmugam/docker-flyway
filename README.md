# docker-flyway

Migrate mysql docker containers.

Simple [docker](http://docker.com) container that uses [flyway](http://flywaydb.org) to migrate mysql containers.

    $ docker run --name dbserver -d -e MYSQL_ROOT_PASSWORD=secretpw mysql
    $ docker run -e FLYWAY_COMMAND=migrate --link dbserver:db -v /my/app/migrations/:/migrations davidlanger/flyway

The first commands runs a mysql server and names it `dbserver`. The second one does three things:

1. Sets an environment variable `FLYWAY_COMMAND` to `migrate`. All other flway commands are valid here.
2. Creates a link to the running mysql server (which we named dbserver). This way the flyway container gets an entry in /etc/hosts and
   some needed environment variables.
3. Mounts the host folder `/my/app/migrations` in the container. This should point to your migrations.

Done.
