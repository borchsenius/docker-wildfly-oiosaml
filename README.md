# docker-wildfly-oiosaml

This is a demonstration of a wildfly-container serving the oiosaml2-demo application found at https://svn.softwareborsen.dk/oiosaml.java/oiosaml2/trunk/demo/

## Instructions


`$ docker build -t oiosaml-vanilla .`

`$ docker run --rm -p 8080:8080 -p 8443:8443 oiosaml-vanilla`

Web-browser: https://localhost:8443/oiosaml2-demo.java/

Notice how https://localhost:8443/oiosaml2-demo.java/saml/login fails at first login, but https://localhost:8443/oiosaml2-demo.java/sp/priv1.jsp pass's through to nemlogin