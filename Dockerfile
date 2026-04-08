FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY . .

RUN javac -encoding UTF-8 DolinabloxServer.java

EXPOSE 25565

CMD ["java", "-Xmx754M", "-Dfile.encoding=UTF-8", "DolinabloxServer"]
