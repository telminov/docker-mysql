# docker-mysql

Build
```
docker build -t telminov/mysql .
```

Run interactive
```
docker run -ti --rm --name=mysql -h mysql -p 3306:3306 -v /var/docker/mysql/data:/var/lib/mysql/ -v /var/docker/mysql/run:/var/run/mysqld telminov/mysql
```

Daemon
```
docker run -d --name=mysql -h mysql -p 3306:3306 -v /var/docker/mysql/data:/var/lib/mysql/ telminov/mysql
```

With socket link
```
sudo mkdir -p /var/docker/mysql/data
sudo mkdir -p /var/docker/mysql/run
sudo mkdir /var/run/mysqld
docker run -d --name=mysql -h mysql -p 3306:3306 -v /var/docker/mysql/data:/var/lib/mysql/ -v /var/docker/mysql/run:/var/run/mysqld telminov/mysql
sudo ln -s /var/docker/mysql/run/mysqld.sock /var/run/mysqld/mysqld.sock
```
