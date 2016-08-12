
This docker image package some linux uitls, and exposethese utils to http API use [atarola/pyjojo](https://github.com/atarola/pyjojo). You can fork this repository and add your utils. Then you can build your own Docker Image. If you do not known how to build Docker Image,look [this](https://docs.docker.com/docker-hub/github/#automated-builds-from-github).

You can run this image use :
```
docker run imaidev/pyjojo-utils
```
test ```/srv/htpasswd.sh```:
```
curl -XPOST http://localhost:3000/scripts/htpasswd -H "Content-Type: application/json" -d '{"user": "webb","pwd": "123"}'
```

。。。ffff
