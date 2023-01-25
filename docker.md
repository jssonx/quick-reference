# Docker

## 前提

docker 容器=镜像+可读层，容器是由镜像实例化而来。简单来说，镜像是文件，容器是进程。容器是基于镜像创建的，即容器中的进程依赖于镜像中的文件。镜像运行起来就是容器。

常用网站：https://hub.docker.com/

## 虚拟化
不依赖VirtualBox或VMWare，依赖Hyper-V

## 常用命令
```
docker run
 - docker run hello-world # run a container from an image。hello-world是镜像名称
 - docker run centos # download image if empty
 - docker run -it centos bash # run the centos container and run the bash, -it 是参数，它表示在交互模式下运行容器，并且能够在容器中进行交互
 - exit # 退出
 - docker run -d --name=redis redis
 - Advanced:
    - docker run -i [container name] # 交互方式run
    - docker run -it [container name] # 交互方式run
    - docker run -p 80:5000 [container name] # 外部端口，内部端口
        docker run -p 3306:3306 mysql
    - docker inspect [container name]

docker ps
 - docker ps # 查看running containers
 - docker ps -a # 查看所有containers
 - docker run -d centos sleep 2000
 - docker stop beautiful_liskov
 - docker stop e51c74
    - stop之后ps下container的status将变成Exited(137)
    - 正常退出的status为Exited(0)
 - docker rm [Name/ID]

docker images
 - docker images
 - docker rmi [Image Name] # Remove an image
    - 如果image正在被某个container使用，则无法删除这个image
    - 需要先docker rm [Container Name/ID]
 - docker pull [Image Name]

docker exec
 - docker exec [Contanier] cat /etc/hosts

attach mode
 - docker run kd/simple-webapp # attach mode
 - docker run -d kd/simple-webapp # detach/background mode
 - docker attach a043d # attach again
```

### 小练习
What is the image used to run the nginx-1 container?
```
docker inspect nginx-1
docker ps
```

Delete all containers from the Docker Host. Both Running and Not Running ones. Remember you may have to stop containers before deleting them.
```
docker stop <container id | container name>
docker rm <container id | container name>
```

Run a container with the nginx:1.14-alpine image and name it webapp
```
docker run -d --name webapp nginx:1.14-alpine
```

一般顺序
```
docker stop <container id | container name>
docker rm <container id | container name>
docker rmi <IMAGE:TAG>
```

## 易混内容

 - docker pull centos：
    - "docker pull centos" 意思是从 Docker Hub 上拉取一个名为 "centos" 的镜像到本地。Docker Hub 是一个公共的镜像仓库，其中包含了许多不同的镜像，可供用户使用。"centos" 是一个开源的 Linux 发行版，在 Docker Hub 上有很多可用的镜像。
 - docker run centos
    - "docker run centos" 意思是在本地运行一个名为 "centos" 的镜像。这将创建一个新的容器，并在其中运行 "centos" 镜像中的操作系统。如果镜像尚未在本地缓存，Docker 将会从 Docker Hub 上拉取 "centos" 镜像。
    - 该命令可以加参数来改变容器的配置和运行方式，例如 -it 参数可以让你在运行的容器中交互，-d 参数可以让容器在后台运行。


## 创建自己的docker
为一个简单的web应用创建docker

 - OS: ubuntu
 - Update apt repo
 - Install dependencies using apt
 - Install Python dependencies using pip
 - Copy source code to /opt folder
 - Run the web server using "flask" command

```dockerfile
FROM Ubuntu

RUN apt-get update && apt-get -y install python

RUN pip install flask flask-mysql

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
```

```
docker build . -f Dockerfile -t jsson/my-custom-app:v1.0
docker build . -f Dockerfile -t jsson/my-custom-app:v1.0 -t jsson/my-custom-app:latest
```

这样就创建好了一个名叫my-custom-app的docker image。后续通过docker run my-custom-app就可以直接完成相关环境配置和程序运行，类似于Makefile。

```
docker push jsson/my-custom-app
```
之所以要加jsson/是因为如果不加这个账户名称的话，无法docker push到docker hub。

一般的创建流程：先本地手动创建一遍，然后使用`history`将需要的命令行抓出来。
