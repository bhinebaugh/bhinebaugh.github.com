# based off of Alpine
FROM jekyll/jekyll:3

# NOTE: I moved the Gemfile out of the root to prevent
# `jekyll serve` from defaulting to reading it and then
# needlessly trying to install itself and dependencies

# Already configured in jekyll/jekyll image:
# WORKDIR /srv/jekyll
# EXPOSE 4000 80

# make available to map to git repo on host
VOLUME /srv/jekyll

# ENTRYPOINT ["/bin/sh"]
# force hosting on '0.0.0.0' rather than 'localhost' to ensure host/vm/container IP alignment
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
# optionally serve on default http port for simpler run command and IP address
# but may generate permissions error
# CMD ["jekyll", "serve", "--host", "0.0.0.0", "--port", "80"]


# Usage
# -----------------------------------------

# 1. build an image using this Dockerfile
#    `docker build -t blog .`

# 2. run the resulting image from command line,
#    with contents of current directory mapped to container,
#    and port translated to default http of 80
#    `docker run -v $PWD:/srv/jekyll -p 80:4000 blog`

# 3. view in browser at '0.0.0.0' on host