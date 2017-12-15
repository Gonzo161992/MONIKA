FROM java:8
EXPOSE 8080
ADD /devil.jar devil.jar
ADD /Config/framework-config.properties Config/framework-config.properties
ADD /Config/template/ Config/template/
ADD /Config/Config.xlsx Config/Config.xlsx
ADD /Data/ Data/
ADD /OR/ OR/
ADD /Utilities/ Utilities
ADD /TestSuite/Suites/ TestSuite/Suites/
ADD /Reports/Report/ Reports/Report/
ADD /test-output/ test-output/
ENTRYPOINT ["java","-jar","devil.jar"]
