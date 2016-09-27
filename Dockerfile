FROM java:7
RUN apt-get update
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
ENV FOO bar
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get install ngnix 
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
