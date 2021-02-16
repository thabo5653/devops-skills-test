FROM linuxserver/mariadb:latest

EXPOSE 3307

ENV BRUCE=WAYNE

COPY BATCAV .
