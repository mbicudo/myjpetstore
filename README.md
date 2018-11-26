MyJPetStore
=================

Based on iBatis JPetStore

- Clone this repository

  ```
  $ git clone https://github.com/mbicudo/myjpetstore-docker.git
  ```

- Build Docker Image

  ```
  $ cd myjpetstore-docker
  $ docker build -t myjpetstore .
  ```

- Run Docker Image

  ```
  $docker run -p 8080:8080 \
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

