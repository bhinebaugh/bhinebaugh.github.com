#! /bin/sh
docker run --rm -v $PWD:/srv/jekyll -p 80:4000 blog
