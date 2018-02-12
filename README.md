This is a base image for services running on jdk8 which consists of:

* image based on openjdk:8-jre-alpine
* DNS ttl settings for java to have TTL of 1s for dns based service discovery
* python, curl, bash and shadow packages added
* a user "service" with /service as home directory
* The script /usr/local/bin/update_config.py to update config files with content from environment variables
  (see https://gist.github.com/micw/d7c0e34aee751e81c5aa952b29b8631b)

The image is auto-built by docker hub (https://hub.docker.com/r/micwy/docker-alpine-openjdk8-service)
* if the github repository changes
* if the base image changes
