# Pelican static site builder docker image

[![pipeline status](https://gitlab.com/richardskumat/docker-pelican/badges/master/pipeline.svg)](https://gitlab.com/richardskumat/docker-pelican/commits/master)

This image has Pelican that I use to test building my site on gitlabci.

The image uses the pelican plugin 'Photos' to resize photos.

Example usage, if $PWD is the pelican project git root:

```
docker run -w /tmp/pelican-project --rm -ti -v $PWD:/tmp/pelican-project qwe1/docker-pelican bash
```

-w changes the starting working directory to /tmp/pelican-project when the CT starts.

Has a version that runs as user 1000 and a separate root version.

## Links to source code and build logs

Gitlab

https://gitlab.com/richardskumat/docker-pelican

Gitlab pipelines

https://gitlab.com/richardskumat/docker-pelican/pipelines

Github

https://github.com/richardskumat/docker-pelican

Dockerhub

https://hub.docker.com/r/qwe1/docker-pelican