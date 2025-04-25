# HSBA Scraper

## TODO
- Add in some tests
- Add in sql create table with the date

## Docker
```
docker build -t hsba_scraper .
```
Use ```-rm``` to have it auto remove after running
Use ```-d``` to run it in detached mode

## Production Run
``` 
docker run -itd --env logger=debug --env host=host --env password=password --env database=database --env user=user --name hsba hsba_scraper
```

Environment Variables
```
--env logger=debug 
--env host=sql_host_url
--env password=sql_password
--env database=sql_database 
--env user=sql_user
```

