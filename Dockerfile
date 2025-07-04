#BASE
FROM openjdk:17-jdk-alpine

#WORKDIR
WORKDIR app/

#CODE
COPY /src/Main.java .

COPY quotes.txt quotes.txt
#BUILD
RUN javac Main.java

#EXPOSE
EXPOSE  8000

#CMD
CMD ["java","Main"]
