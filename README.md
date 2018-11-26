MyJPetStore
=================

Based on iBatis JPetStore
![mybatis-jpetstore](http://mybatis.github.io/images/mybatis-logo.png)

- Clone this repository

  ```
  $ git clone https://github.com/mddb/myjpetstore-docker.git
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

