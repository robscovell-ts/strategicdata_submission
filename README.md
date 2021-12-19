
The docker image is at [Docker Hub](https://hub.docker.com/repository/docker/robscovell/strategicdata_submission).

To run it:
```
docker pull robscovell/strategicdata_submission:submission
docker run -d -p 8080:80 robscovell/strategicdata_submission:submission
```

The `data/words` file is the file from `/usr/share/dict/words` with apostrophised words removed.
`/usr/share/dict/words` does not exist in the base docker image I used but if it did, I would have
used the following line in the Dockerfile to make a version prepared for use by this web service:

```
RUN sed "/'s$/d" /usr/share/dict/words > /data/words
```
