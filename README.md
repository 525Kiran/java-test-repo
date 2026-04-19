# Dummy Frontend Java App

A simple Maven-based Java/Jakarta EE web application built specifically for practicing Jenkins Freestyle pipeline configurations and Tomcat 10+ deployments.

## Prerequisites
- **Java**: JDK 17
- **Application Server**: Apache Tomcat 10.x (Requires Jakarta EE 9+ specifications)
- **Jenkins**: Configured with a Freestyle project

## Features
- **Modern UI**: Designed with Bootstrap 5 and customized vanilla CSS.
- **Jakarta Servlets**: Uses `jakarta.servlet` namespace compatible with recent application servers.
- **Maven Output**: Generates `dummy-frontend-java-app.war`.

## Jenkins Freestyle Job Instructions
This project is intended strictly for use with a standard Jenkins Freestyle Job. **Do NOT use Jenkins Pipeline scripts.**

1. **Source Code Management**: Choose **Git** and link the URL to your fork/repository.
2. **Build Environment**: Ensure your environment provides JDK 17.
3. **Build Steps**: Add **"Invoke top-level Maven targets"**
   - **Goals**: `clean package`
4. **Post-build Actions**: 
   - You can use the **Deploy to container Plugin** or execute a bash step to copy the WAR file.
   - The compiled WAR file will be generated at: `target/dummy-frontend-java-app.war`
   - Deploy this WAR directly into your Tomcat 10 `webapps` directory.

## Local Build & Testing
To build locally, use the Maven Wrapper scripts included in the repository:
```bash
# On Linux/MacOS
./mvnw clean package

# On Windows
mvnw.cmd clean package
```
