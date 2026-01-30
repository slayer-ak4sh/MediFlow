@echo off
echo Building Patient Management Microservices...
echo.

echo Cleaning and compiling all services...
mvn clean compile -DskipTests

echo.
echo Build completed!
echo.
echo To run individual services:
echo 1. cd auth-service && mvn spring-boot:run
echo 2. cd billing-service && mvn spring-boot:run  
echo 3. cd patient-service && mvn spring-boot:run
echo 4. cd analytics-service && mvn spring-boot:run
echo 5. cd api-gateway && mvn spring-boot:run
echo.
pause