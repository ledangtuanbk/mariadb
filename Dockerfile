FROM mariadb:10.2
# Take the war and copy to webapps of tomcat
ENV TZ=Asia/Ho_Chi_Minh
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y \
  nano \
  net-tools \
  openssh-client \
  telnet 
