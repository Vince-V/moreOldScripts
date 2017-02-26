# Old build script I wrote for work a long time ago
# Written generically and on personal time with no relationship to any company.
 
0.Create Eclipse project
File > New > Java Project. 
Uncheck the default location check box and create this folder structure below. This is an example to setup DSave:
C:\<>\automatedprojectsetup\DataSave 

1 . Download Apache Ant
	URL:http://ant.apache.org/bindownload.cgi
	System property to be set:  Set ANT_HOME environment variable to the ANT folder where you downloaded, C:\apache-ant-1.8.4
	Set Path: in System to path of ant bin directory
	
2. Download jsch-0.1.48.jar
	URL:http://www.jcraft.com/jsch/ . 
	COPY: to ant_home/lib folder. For example: C:\apache-ant-1.8.4\lib
	
3. Download ant for eclipse:
	URL: http://sourceforge.net/projects/ant-eclipse/files/ant-eclipse/1.0/
	COPY: to ant_home/lib folder. For example: C:\apache-ant-1.8.4\lib

4. Copy all files from vob at \vob\Services\DataServices\EclipseSetup\ to your local folder C:\DSSetup

5. Modify vob path/s mentioned in properties file(see BASEVIEW and View_Source paths. Modify credentials (username/password)) to connect to DIT.

6. Modify ds_setup.bat in textpad/notepad and set ANT_HOME and JAVA_HOME path correctly pointing to your local setup. 

7. Update and add the following VM arguments in eclipse to read the config folder:
-D.log4j.properties=C:\\<>\\automatedprojectsetup\\DServices\\DSServerconfig\\appconfig\\log4j.properties   -Dssp.configSubdir=appconfig -Ddomain.config=appconfig -Dms.config=appconfig\\config
7a. Update your log4j.properties file in project folder to DEBUG and output logs to folder: C://automatedprojectsetup//DServices//logs//

8. Run ds_setup .bat

9. Open Eclipse project and Build project
Right click on project in Navigation Pane > click on Open Project 
Highlight project in Navigation Pane. Project > Clean

10. Download DS_ProfileRetrieve_itw_103.ear from 30/31 env (/apps/opt/weblogic/config/DS/applications) and extract DS_ProfileRetrieve.jar and add to your classpath. 
Also download DS_Flow_103.jar and ppotswf-ejb_103.jar from the same environment and add it to classpath.
