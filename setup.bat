Enter file contents hereSET JAVA_HOME=C:\program files\Java\jdk1.6.0_37
SET ANT_HOME=C:\d\apache-ant-1.8.4
SET PATH=%PATH%;C:\d\apache-ant-1.8.4\bin;%JAVA_HOME%\bin;
SET CLASSPATH=%CLASSPATH%;%ANT_HOME%\lib;%JAVA_HOME%\lib\tools.jar
call ant  -f build_dataservices.xml -Dservice=DataServices -propertyfile=DataServices.properties common all dal

pause
