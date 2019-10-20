# Pelican static site builder docker image

This image has Pelican that I use to test building my site on gitlabci.

The image uses the pelican plugin to resize photos.

Example usage, if $PWD is the pelican git root:

```
docker run --rm -ti -v $PWD:/tmp/pelican-project qwe1/docker-pelican bash
```

# Links

Github

https://github.com/richardskumat/docker-pelican

Travis

https://travis-ci.org/richardskumat/docker-pelican

Gitlab

https://gitlab.com/richardskumat/docker-pelican

Dockerhub

https://hub.docker.com/r/qwe1/docker-pelican