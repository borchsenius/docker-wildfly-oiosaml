FROM jboss/wildfly:13.0.0.Final
USER root
RUN yum install -y subversion maven && yum -y clean all
RUN rm -rf /var/cache/yum
USER jboss

RUN svn checkout https://svn.softwareborsen.dk/oiosaml.java/oiosaml2/trunk/ oiosaml
RUN (cd oiosaml/demo/ && mvn package )
RUN mv oiosaml/demo/oiosaml-config/ /opt/jboss/oiosaml-config/
RUN cp oiosaml/demo/target/oiosaml2-demo.java.war /opt/jboss/wildfly/standalone/deployments/
