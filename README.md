EMM - Easy Multiple Minecraft  
=================

EMM helps you to manage/run multible [Minecraft](http://www.minecraft.net/) client and server versions on your Windows 7/XP computer. Create new client or server instances on the fly which automaticly download all required files! All files and folders are easly located in a single custom folder on your system. You can use it even when minecraft is already installed!

To get started -- checkout http://z3bbster.github.com/EMM/wiki


Usage
-----

You can use EMM for minecraft playing/testing of texturepacks, mods, modpacks, older clients versions. Create as many client and/or server instances with the startup script. Currently support for downloading Minecraft [Client launcher](http://www.minecraft.net/download), Minecraft [Vanilla Server](http://www.minecraft.net/download), [Bukkit](http://bukkit.org/) Server. For vanilla and bukkit server instances you can add server properties such as seed,server name, motd upfront creating them.

For more information about setting up and creating new client/server instances, refer to the easy instructions given inside this script!

Prerequisites
----------

Before you start using EMM you need the following prerequisites. During the setup EMM with automaticly check if the prerequisites are installed and available.

### WGET for Windows

[Download](http://bit.ly/wbqGxn) the latest version of wget via  and unzip and copy wget.exe to windows/system folder.

### Sun JRE

[Download](http://bit.ly/getJava) and install the latest version of Sun's JRE - Java Runtime Environment. Note if you have a minecraft client already installed you don't need this, because it's already installed.


How to get started
----------

### Step 1
 
Download the lastest version and open the EasyMultipleMinecraft.bat with your favorite text editor. For example notepad,notepad++.etc

### Step 2

Update/Add CUSTOM VARIABLES on top of the script. Set the correct path locations and up to date url to the diffent exe files.

	SET EMM_ROOT_FOLDER=%HOMEDRIVE%%HOMEPATH%\documents\MultipleMinecraft
	SET EMM_BACKUP_FOLDER=%HOMEDRIVE%%HOMEPATH%\documents\MultipleMinecraft\Worlds_Backups
	SET VANILLA_LAUNCHER_URL=https://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft.exe
	SET VANILLA_SERVER_URL=https://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft_Server.exe
	SET BUKKIT_SERVER_URL=http://ci.bukkit.org/job/dev-CraftBukkit/promotion/latest/Recommended/artifact/target/
	SET MINECRAFT_VERSION=1.1
	SET BUKKIT_JAR_FILENAME=craftbukkit-1.1-R3.jar

### Step 3

Place EasyMultipleMinecraft.bat anywhere on your computer.

### Step 4

Excute EasyMultipleMinecraft.bat and choose '1' to setup EMM and follow the easy instructions.

### Step 5

Use either option 2 or 3 in main menu to add client/server new instances. Every time who want to add new client/server instances again, simply open the script again. There is no limit in how many instances you can create.


Todo List
---------

+ Create Bukkit server feature.
+ Check for installment before creating an new instance.
+ Create custom backup startup for every instance.
+ Add seperate .cfg file.
+ Add Browse to EMM root folder.


Change Log
----------

+ V 0.0.2 Alpha - Added Vanilla server creation & updated readme.md.
+ V 0.0.1 Alpha - Added bat script & readme.md file.


Bug tracker
-----------

Have a bug? Please create an issue here on GitHub!

https://github.com/z3bbster/EMM/issues


Authors and Contributors
-------

**z3bbster**

+ http://github.com/z3bbster
+ http://bit.ly/CraftGlimp-Gplus 
+ http://www.minecraftforum.net/user/298478-z3bbster/


License
---------------------

Copyright 2011 z3bbster

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this work except in compliance with the License.
You may obtain a copy of the License in the LICENSE file, or at:

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

* * *

EMM makes your Minecraft life easer!