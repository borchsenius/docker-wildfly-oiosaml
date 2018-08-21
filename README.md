# docker-wildfly-oiosaml

$ docker build -t oiosaml-vanilla .

$ docker run --rm -p 8080:8080 -p 8443:8443 oiosaml-vanilla

Browser: https://localhost:8443/oiosaml2-demo.java/

Notice how https://localhost:8443/oiosaml2-demo.java/saml/login fails if first login and https://localhost:8443/oiosaml2-demo.java/sp/priv1.jsp pass's through to nemlogin