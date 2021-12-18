The `data/words` file is the file from `/usr/share/dict/words` with apostrophised words removed.

The docker image is at [Docker Hub](https://hub.docker.com/repository/docker/robscovell/strategicdata_submission).

To run it:
```
docker pull robscovell/strategicdata_submission:submission
docker run -d -p 8080:80 robscovell/strategicdata_submission:submission
```
