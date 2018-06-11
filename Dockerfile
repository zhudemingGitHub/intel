FROM 10.19.0.12:5000/jenkins/oracle-jdk:v1.0.4

ADD ./target/spring-cloud-eureka-1.0.0-SNAPSHOT.jar /root
CMD ["sh", "-c", "cd /root; java -Djava.security.egd=file:/dev/./urandom -jar /root/spring-cloud-eureka-1.0.0-SNAPSHOT.jar --eureka.server.enable-self-preservation=false"]
EXPOSE 8761

