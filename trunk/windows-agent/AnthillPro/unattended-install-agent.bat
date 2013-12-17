@echo off
setlocal

set AGENT_JAVA_HOME=C:\Program Files (x86)\Java\jre7
set JAVA_HOME=C:\Program Files (x86)\Java\jre7
set CONNECT_VIA_RELAY=N
set INSTALL_AGENT_REMOTE_HOST=anthillpro3.nci.nih.gov
set INSTALL_AGENT_REMOTE_PORT=7915
set INSTALL_AGENT_REMOTE_PORT_SSL=N
set INSTALL_AGENT_REMOTE_PORT_MUTUAL_AUTH=N
set INSTALL_AGENT_RELAY_HTTP_PORT=20080
set INSTALL_AGENT_NAME=anthill3-agent
set INSTALL_AGENT_DIR=C:\Program Files\anthill3\batch\agent
set INSTALL_SERVICE=Y
set INSTALL_SERVICE_NAME=ah3agent
set INSTALL_SERVICE_LOGIN=ahpagent
set INSTALL_SERVICE_PASSWORD=
set INSTALL_SERVICE_AUTOSTART=Y
set agent_count=10

REM ###########################################################################
REM The installation script
REM ###########################################################################

cd %~dp0

set ANT_HOME=opt\apache-ant-1.7.1
set CLASSPATH=

set i=0
:LOOP
  CALL opt\apache-ant-1.7.1\bin\ant.bat -f install.with.groovy.xml ^
        "-Dinstall-agent=true" ^
        "-Dinstall-server=false" ^
        "-Dinstall.java.home=%AGENT_JAVA_HOME%" ^
        "-Dinstall.agent.connect_via_relay=%CONNECT_VIA_RELAY%" ^
        "-Dinstall.agent.jms.remote.host=%INSTALL_AGENT_REMOTE_HOST%" ^
        "-Dinstall.agent.jms.remote.port=%INSTALL_AGENT_REMOTE_PORT%" ^
        "-Dinstall.agent.relay.http.port=%INSTALL_AGENT_RELAY_HTTP_PORT%" ^
        "-Dinstall.agent.remote.port.ssl=%INSTALL_AGENT_REMOTE_PORT_SSL%" ^
        "-Dinstall.agent.remote.port.mutual_auth=%INSTALL_AGENT_REMOTE_PORT_MUTUAL_AUTH%" ^
        "-Dinstall.agent.name=%INSTALL_AGENT_NAME%-%i%" ^
        "-Dinstall.agent.dir=%INSTALL_AGENT_DIR%-%i%" ^
        "-Dinstall.service=%INSTALL_SERVICE%" ^
        "-Dinstall.service.name=%INSTALL_SERVICE_NAME%" ^
        "-Dinstall.service.login=%INSTALL_SERVICE_LOGIN%" ^
        "-Dinstall.service.password=%INSTALL_SERVICE_PASSWORD%" ^
        "-Dinstall.service.autostart=%INSTALL_SERVICE_AUTOSTART%" ^
	install-non-interactive
  set /a i=i+1
  if "%i%"=="%agent_count%" goto END
  goto LOOP
:END
