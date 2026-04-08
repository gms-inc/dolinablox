FROM bellsoft/liberica-openjdk-alpine:8

WORKDIR /app

COPY . .

RUN javac -encoding UTF-8 DolinabloxServer.java

EXPOSE 25565

CMD ["java", "-Xmx754M", "-Dfile.encoding=UTF-8", "DolinabloxServer"]
