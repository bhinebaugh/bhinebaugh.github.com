#same image as wc rails
FROM ruby:2.1.10

# provide a javascript runtime as required by execjs gem (dependency)
RUN apt-get update && apt-get install -y --no-install-recommends nodejs

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# When using COPY with more than one source file, the destination must be a directory and end with a /
COPY Gemfile* ./
RUN bundle install

# with static site generation, don't see a need to COPY and bake files into the build
# COPY . /usr/src/app
VOLUME /usr/src/app

# force hosting on '0.0.0.0' rather than 'localhost' to ensure host/vm/container IP alignment
# and for convenience, serve on the default http port
EXPOSE 80
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "80"]

# build and run image with something like
docker run -p 80:80 -v $PWD:/usr/src/app blog
# docker run -v $PWD:/usr/src/app
