set SONAR_TOKEN=8aef931b89d11ac71f86b2cacf93d930211d838e
set SONAR_ORG=earnhardt3rd
set SONAR_PROJ=myPerl
sonar-scanner.bat -D"sonar.organization=%SONAR_ORG%" -D"sonar.projectKey=%SONAR_PROJ%" -D"sonar.sources=." -D"sonar.host.url=https://sonarcloud.io"