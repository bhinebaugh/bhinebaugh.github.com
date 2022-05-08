#! /bin/sh
# Example command to start the jekyll development environment as a Docker container
docker run --rm -d --name bblog -v $PWD:/srv/jekyll -p 88:4000 blog

# NOTE:
# This expects the 'blog' image to already exist from
# running `docker build` as detailed in the Dockerfile

# The command
# - creates the container
# - makes the contents of the current directory available for Jekyll to process
# - allows browser access from the host at localhost:88 or 127.0.0.1:88

# Once run, you can then use commands like `docker stop bblog` to manage the existing container

# Additional options:
# `--name mycontainername` to specify a meaningful name that can simplify start/stop
# `-p 80:4000` makes the site available on the default port, so URL will be just 'localhost'