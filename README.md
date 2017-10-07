# Dockerstuff

**Note:**
Create a docker hub login for uploading images.  (Like a github for containers..) This will help when trying to run "from" a previously created image. (Ie base images that have most of the things you put in normal builds for your org.)


**To Build a container in a directory where a Dockerfile exists:**

```bash
docker built -t dfedick/base .
```

**To run docker**

```bash
cd ~/directory/location/with/docker-compose.yml
docker-compose up -d
```
or

```bash
docker run -it dfedick/base 
```

**Log into a running docker container**
```bash
# docker ps | grep zookeeper
b3558494cce5        zaiusinc/zookeeper:3.4.6   "/opt/zookeeper/bin/z"   17 months ago       Up 17 months                               zookeeper
02:19:17 Sat Oct 07 [root@host.name:/opt/]
# docker exec -it zookeeper /bin/bash
02:19:25 Sat Oct 07 [[root@docker.name:/opt/zookeeper/bin]]
$
```
**Launch a container just to log in and check out environment:**

```bash
docker exec -it dfedick/base /bin/bash
```

**Launch an image and just run bash to check out environment:**
**Note:** The ubuntu:16.04 is the image:tag that is listed in docker hub. 

```bash
# docker run -t ubuntu:16.04  /bin/bash
root@9360c15f1d43:/#
```

**Getting logs for docker when they are running.**

```bash
# docker ps
CONTAINER ID        IMAGE                      COMMAND                  CREATED             STATUS              PORTS                  NAMES
8086259f91aa        atmoz/sftp                 "/entrypoint"            3 weeks ago         Up 3 weeks          0.0.0.0:2222->22/tcp   sftp

# docker logs sftp
```

