# Dockerstuff


**To Build a container in a directory where a Dockerfile exists:**

```bash
docker built -t dfedick/base .
```

**To run docker**

```bash
cd ~/directory/location/with/docker-compose.yml
docker-compose up -d
```

**Getting logs for docker when they are running.**

```bash
# docker ps
CONTAINER ID        IMAGE                      COMMAND                  CREATED             STATUS              PORTS                  NAMES
8086259f91aa        atmoz/sftp                 "/entrypoint"            3 weeks ago         Up 3 weeks          0.0.0.0:2222->22/tcp   sftp

# docker logs sftp
```

