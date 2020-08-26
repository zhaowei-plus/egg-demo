#制定node镜像的版本
FROM docker.io/node

#声明作者
MAINTAINER zhaowei

#移动当前目录下面的文件到webapps目录下
ADD . /webapps/

#进入到app目录下面，类似cd
WORKDIR /webapps

#安装依赖
RUN npm install

#对外暴露的端口
EXPOSE 7001

#程序启动脚本
CMD ["npm", "start"]
