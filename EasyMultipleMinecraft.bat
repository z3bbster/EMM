@ECHO OFF

REM ----------------------------------------------------------------------------------
REM --- CUSTOM VARIABLES - Edit these vars below at own will to keep them updated.
REM ----------------------------------------------------------------------------------

SET EMM_ROOT_FOLDER=%HOMEDRIVE%%HOMEPATH%\documents\MultipleMinecraft
SET EMM_BACKUP_FOLDER=%HOMEDRIVE%%HOMEPATH%\documents\MultipleMinecraft\Worlds_Backups

SET VANILLA_LAUNCHER_URL=https://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft.exe
SET VANILLA_SERVER_URL=https://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft_Server.exe
SET BUKKIT_SERVER_URL=http://ci.bukkit.org/job/dev-CraftBukkit/promotion/latest/Recommended/artifact/target/craftbukkit-

SET MINECRAFT_VERSION=1.1
SET BUKKIT_JAR_FILENAME=craftbukkit-1.1-R3.jar


REM ----------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------
REM --- DONT EDIT ANYTHING AFTER THIS! ONLY IF YOU KNOW WHAT YOUR DOING!
REM ----------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------

REM ----------------------------------------------------------------------------------
REM --- MAIN VARIABLES 
REM ----------------------------------------------------------------------------------


REM get date and attach to var - http://bit.ly/zLNiIo
FOR /F "tokens=2-4 delims=/ " %%i in ('date /t') do set yyyymmdd=%%k%%j%%i
FOR /F "tokens=1-3 delims=: " %%i in ('echo %time%') do set hhmmss=%%i%%j%%k

REM ECHO Date: %yyyymmdd%
REM ECHO Time: %hhmmss%


REM ----------------------------------------------------------------------------------
REM --- MAIN SECTION 
REM ----------------------------------------------------------------------------------
:MAIN
CLS
ECHO -------------------------------------------------------------------------------
ECHO  EMM - Easy Multiple Minecraft [Version 0.0.2 Alpha] Windows Edition
ECHO  Copyright (c) 2011 Z3bbster. All rights reserved.
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO  EMM helps you to manage/run multible minecraft client and server versions 
ECHO  on your computer. Create new client or server instances on the fly which 
ECHO  automaticly download all required files! All are easly located in a single 
ECHO  custom folder on your system.
ECHO.
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO  [MAIN MENU]
ECHO.

REM Main start menu
ECHO  1. Setup MultipleMinecraft
ECHO  2. Add new CLIENT Minecraft instance
ECHO  3. Add new SERVER Minecraft instance
ECHO  4. Open EMM root folder
ECHO  5. Exit
ECHO.
SET choice=
SET /p choice=" What you want to do? Type a number: "
IF '%choice%'=='1' GOTO SETUP_MM
IF '%choice%'=='2' GOTO NEW_CLIENT
IF '%choice%'=='3' GOTO NEW_SERVER
IF '%choice%'=='4' EXIT
GOTO MAIN

REM ----------------------------------------------------------------------------------
REM --- SETUP MM SECTION 
REM ----------------------------------------------------------------------------------
:SETUP_MM
ECHO.
CLS
ECHO -------------------------------------------------------------------------------
ECHO  1. Setup EMM - Easy Multiple Minecraft
ECHO -------------------------------------------------------------------------------


IF EXIST %EMM_ROOT_FOLDER% (

REM CURRENT INSTALL FOUND
ECHO  Previous installment of Easy Multiple Minecraft found!
ECHO  Installation found in: %EMM_ROOT_FOLDER%
ECHO.
ECHO  1. Please BACKUP and REMOVE the folder mentioned above. 	 
ECHO  2. Restart this script and run setup again!
ECHO.
PAUSE
EXIT

) ELSE (

ECHO.
ECHO  PREREQUISITES
ECHO.
REM Check Prerequisites

REM See if JRE on the system
IF EXIST %WINDIR%\system32\wget.exe (
ECHO  [Java] PASSED! - JRE found and available!
) ELSE (
ECHO  [Java] FAILED!
ECHO.
ECHO  1. Download and install JRE. http://bit.ly/getJava
ECHO  2. Restart this script!
ECHO.
PAUSE
EXIT
)

REM See if wget on the system
IF EXIST %WINDIR%\system32\wget.exe (
ECHO  [Wget] PASSED! - Wget found and available!
) ELSE (
ECHO  [Wget] FAILED! - Wget not found!
ECHO.
ECHO  1. Download WGET for Windows - V. 1.11.4 - http://bit.ly/wbqGxn
ECHO  2. Unzip and copy wget.exe to windows/system folder.
ECHO  3. Restart this script!
ECHO.
PAUSE
EXIT
)
ECHO.
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO  It's time to setup EMM on your system!
ECHO  Install path: %EMM_ROOT_FOLDER%
)
ECHO.


REM FILE STRUCTURE CREATION
REM Make file structure

mkdir %EMM_ROOT_FOLDER%\Shortcuts\Clients
mkdir %EMM_ROOT_FOLDER%\Shortcuts\Servers
mkdir %EMM_ROOT_FOLDER%\EMM_Clients
mkdir %EMM_ROOT_FOLDER%\EMM_Servers\Bukkit
mkdir %EMM_ROOT_FOLDER%\EMM_Servers\Vanilla

REM ECHO Date: %yyyymmdd%
REM ECHO Time: %hhmmss%
REM mkdir %EMM_ROOT_FOLDER%\EMM_Servers\Bukkit\Server1.1_Bukkit
REM mkdir %EMM_ROOT_FOLDER%\EMM_Servers\Vanilla\Server1.1_Vanilla

mkdir %EMM_ROOT_FOLDER%\Mods\SP\Add_To_Jar
mkdir %EMM_ROOT_FOLDER%\Mods\SP\Mods_Folder
mkdir %EMM_ROOT_FOLDER%\Mods\SP\Mods_Installers
mkdir %EMM_ROOT_FOLDER%\Mods\SMP\Vanilla
mkdir %EMM_ROOT_FOLDER%\Mods\SMP\Bukkit
mkdir %EMM_ROOT_FOLDER%\Mods\SMP\Bukkit\Mods
mkdir %EMM_ROOT_FOLDER%\Mods\SMP\Bukkit\Plugins
mkdir %EMM_ROOT_FOLDER%\Tools
mkdir %EMM_ROOT_FOLDER%\Worlds_Backups

ECHO  1. Created EMM filestructure!
ECHO  2. Downloading latest minecraft launcher client
ECHO.

REM DOWNLOAD ALL FILES
cd %EMM_ROOT_FOLDER%
wget %VANILLA_LAUNCHER_URL% --no-check-certificate

REM cd %EMM_ROOT_FOLDER%\EMM_Servers\Vanilla\Server1.1_Vanilla
REM wget %VANILLA_SERVER_URL% --no-check-certificate

REM cd %EMM_ROOT_FOLDER%\EMM_Servers\Bukkit\Server1.1_Bukkit
REM wget %BUKKIT_SERVER_URL% --no-check-certificate

REM echo @ECHO OFF> Start_Server1.1_Bukkit.bat
REM echo java -Xmx1G -Xms1G -jar %EMM_ROOT_FOLDER% >> Start_Server1.1_Bukkit.bat

REM ECHO  3. Create client startup file(s).

cd %EMM_ROOT_FOLDER%\Shortcuts\Clients

ECHO set APPDATA=%EMM_ROOT_FOLDER%\EMM_Clients\Minecraft_Vanilla> Minecraft_Vanilla.bat
ECHO %EMM_ROOT_FOLDER%\minecraft.exe>> Minecraft_Vanilla.bat

ECHO.
PAUSE
GOTO MAIN



REM ----------------------------------------------------------------------------------
REM --- NEW CLIENT SECTION 
REM ----------------------------------------------------------------------------------
:NEW_CLIENT
CLS
ECHO -------------------------------------------------------------------------------
ECHO  2. New CLIENT Minecraft instance
ECHO -------------------------------------------------------------------------------
ECHO.
SET name=
SET /p name=Enter a name for neww minecraft client instance: 
ECHO.
CD %EMM_ROOT_FOLDER%\Shortcuts\Clients
ECHO set APPDATA=%EMM_ROOT_FOLDER%\EMM_Clients\%name%> %name%_Start.bat
ECHO %EMM_ROOT_FOLDER%\minecraft.exe>> %name%_Start.bat
ECHO  Succesfull create the %name% client instance!
ECHO  Start the file below to finish setup: 
ECHO  %EMM_ROOT_FOLDER%\Shortcuts\Clients\%name%_Start.bat
ECHO.
PAUSE
GOTO MAIN


REM ----------------------------------------------------------------------------------
REM --- NEW SERVER SECTION 
REM ----------------------------------------------------------------------------------
:NEW_SERVER
CLS
ECHO -------------------------------------------------------------------------------
ECHO  3. New SERVER Minecraft instance
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO  1. Vanilla Minecraft Server
ECHO  2. Bukkit Server
ECHO.
SET choice=
SET /p choice="What you want to do? Type a number: "
IF '%choice%'=='1' GOTO NEW_VANILLA_SERVER
IF '%choice%'=='2' GOTO NEW_BUKKIT_SERVER
PAUSE
GOTO MAIN

:NEW_VANILLA_SERVER
ECHO.
ECHO Get ready to an easy setup ride for the latest VANILLA server for minecraft.
ECHO This will create/download a VANILLA server setup in seconds.
ECHO.
SET vanilla_name=
SET /p vanilla_name= 1. What is the name of your new VANILLA server? 
ECHO.
mkdir %EMM_ROOT_FOLDER%\EMM_Servers\Vanilla\%vanilla_name%
cd %EMM_ROOT_FOLDER%\EMM_Servers\Vanilla\%vanilla_name%
wget %VANILLA_SERVER_URL% --no-check-certificate
ECHO.
ECHO Your new %vanilla_name% Vanilla server is installed succesfully!
ECHO Open the file below to start your new server!
ECHO.
ECHO %EMM_ROOT_FOLDER%\EMM_Servers\Vanilla\%vanilla_name%\Minecraft_Server.exe
ECHO.
PAUSE
GOTO MAIN

:NEW_BUKKIT_SERVER
ECHO.
ECHO Get ready to an easy setup ride for the latest Bukkit server for minecraft.
ECHO This will create/download a bukkit server setup in seconds.
ECHO.
SET bukkit_name=
SET level-seed=
SET gamemode=
SET difficulty=
SET max-players=
SET motd=
SET /p bukkit_name= 1. What is the name of your new BUKKIT server? : 
SET /p level-seed= 2. Level-seed - Add a seed for your world. , eg. "404":
SET /p gamemode= 3. Gamemode - 0:Survival 1:creative, default "0": 
SET /p difficulty= 4. Difficulty - 0:Peaceful 1:Easy 2:Normal 3:Hard, default "1": 
SET /p max-players= 5. Max-players - The max numbers of players, default "20": 
SET /p motd= 6. MOTD - Your Message Of The Day, Max. 59 characters: 
ECHO.
ECHO %TIME% - Correctly finished server propeties user input.
ECHO.
PAUSE
GOTO MAIN