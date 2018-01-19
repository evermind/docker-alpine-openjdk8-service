FROM openjdk:8-jre-alpine

RUN \
  apk --no-cache --update add shadow bash && \
  useradd service -d /service && \
  sed -i -r 's/^#?networkaddress.cache.ttl=.*/networkaddress.cache.ttl=1/'  /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/java.security && \
  sed -i -r 's/^#?networkaddress.cache.negative.ttl=.*/networkaddress.cache.negative.ttl=1/'  /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/java.security 
