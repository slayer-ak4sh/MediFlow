@echo off
echo Checking system requirements for Patient Management Microservices...
echo.

echo Checking Java version:
java -version
echo.

echo Checking Maven version:
mvn -version
echo.

echo Checking if JDK 17+ is available:
javac -version
echo.

echo If you see Java 17+ and Maven 3.6+ above, you're ready to build!
echo Run 'build.bat' to compile all services.
echo.
pause