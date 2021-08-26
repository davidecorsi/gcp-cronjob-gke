FROM ubuntu:latest

RUN apt-get update && apt-get install openjdk-8-jdk -y
RUN java -version

COPY ./cronjob-gke-0.0.1-SNAPSHOT.jar ./app/cronjob-gke-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java"]
CMD ["-jar", "./app/cronjob-gke-0.0.1-SNAPSHOT.jar"]


