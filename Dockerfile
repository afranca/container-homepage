FROM tomcat:8.0
RUN useradd -ms /bin/bash admin
USER admin
COPY index.jsp /usr/local/tomcat/webapps/ROOT