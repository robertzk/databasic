# Restarting Postgres in OSX

The following was drawn from [a StackOverflow answer](http://stackoverflow.com/questions/7975556/how-to-start-postgresql-server-on-mac-os-x).

To start manually in OS X, run

```
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
```

To stop, run

```
pg_ctl -D /usr/local/var/postgres stop -s -m fast
```


