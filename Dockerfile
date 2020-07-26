FROM maven:3.6.3-jdk-8-openj9
# Update ubuntu system
#RUN apt-get update
# Install java version on ubuntu-selenium image
#RUN apt-get install -y default-jdk
#RUN apt-get install -y default-jre
# Install maven on ubuntu-selenium image
#RUN apt-get install -y maven
# Install git on ubuntu-selenium image
RUN apt-get install -y git
RUN git clone https://github.com/AutomatedOwl/selenium-java-pom-example.git
WORKDIR "/selenium-java-pom-example"
CMD ["mvn test"]