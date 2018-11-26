MyJPetStore
=================

Based on centos7 & iBatis JPetStore

- Clone this repository

  ```
  $ git clone https://github.com/mbicudo/myjpetstore-docker.git
  ```

- Add the tgz for Apache Tomcat and JDK of your choice, and edit Dockerfile accordingly.
The versions that this image has been tested are:

  ```
   $ ls -1 SRC/
   apache-tomcat-9.0.12.tar.gz
   jdk-8u40-linux-x64.tar.gz
  ```

- Build Docker Image

  ```
  $ cd myjpetstore-docker
  $ docker build -t myjpetstore .
  ```

- Run Docker Image

  ```
  $ docker run -p 8080:8080 \
	-e MYPET_DBHOST=db \
	-e MYPET_DBPORT=3306 \
	-e MYPET_DATABASE=jpetstore \
	-e MYPET_USERNAME=jpetstore \
	-e MYPET_PASSWD=jpetstore \
	myjpetstore
  ```

- DependenciesRun Docker Image

  JPetStore requires an external DB. By default the driver is mysql.

  ```
  jdbc.driverClassName=com.mysql.jdbc.Driver
  jdbc.url=jdbc:mysql://${MYPET_DBHOST}:${MYPET_DBPORT}/${MYPET_DATABASE}
  jdbc.username=${MYPET_USERNAME}
  jdbc.password=${MYPET_PASSWD}
  ```

See myjpetstore-mysql-docker.

