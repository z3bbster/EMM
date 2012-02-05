EMM - Easy Multiple Minecraft  
=================

EMM helps you to manage/run multible minecraft client and server versions on your Windows 7 computer. Create new client or server instances on the fly which automaticly download all required files! All files and folders are easly located in a single custom folder on your system.

To get started -- checkout http://z3bbster.github.com/EMM/wiki


Usage
-----

You can use EMM for minecraft playing/testing of texturepacks, mods, modpacks, older clients versions. Create as many client and/or server instances with the startup script(s). Currently support for downloading Minecraft launcher, Minecraft vanilla Server, Bukkit Server.

For more information about setting up and creating new client/server instances, refer to the easy instructions given inside this script!


How to get started
----------

1. Download the lastest version and open the EasyMultipleMinecraft.bat with your favorite text editor. For example notepad,notepad++.etc
2. Update/Add CUSTOM VARIABLES on top of the script. Set the correct path locations and up to date exe urls.
`SET EMM_ROOT_FOLDER=%HOMEDRIVE%%HOMEPATH%\documents\MultipleMinecraft`
`SET EMM_BACKUP_FOLDER=%HOMEDRIVE%%HOMEPATH%\documents\MultipleMinecraft\Worlds_Backups`
`SET VANILLA_LAUNCHER_URL=https://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft.exe`
`SET VANILLA_SERVER_URL=https://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft_Server.exe`
`SET BUKKIT_SERVER_URL=http://ci.bukkit.org/job/dev-CraftBukkit/promotion/latest/Recommended/artifact/target/`
`SET MINECRAFT_VERSION=1.1`
`SET BUKKIT_JAR_FILENAME=craftbukkit-1.1-R3.jar`

3. Place EasyMultipleMinecraft.bat anywhere on your computer.
4. Excute EasyMultipleMinecraft.bat and choose '1' to setup EMM and follow the easy instructions.
5. Use either option 2 or 3 in main menu to add client/server new instances.


Todo List
---------

+ Add Browse to EMM root folder.


Change Log
----------
+V 0.0.2 Alpha - Added Vanilla server creation & updated readme.md.
+V 0.0.1 Alpha - Added bat script & readme.md file.


Bug tracker
-----------

Have a bug? Please create an issue here on GitHub!

https://github.com/z3bbster/EMM/issues


Authors
-------

**z3bbster**

+ http://github.com/z3bbster
+ http://bit.ly/CraftGlimp-Gplus 
+ http://www.minecraftforum.net/user/298478-z3bbster/




License
---------------------

Copyright 2011 z3bbster

Licensed under the Apache License, Version 2.0: http://www.apache.org/licenses/LICENSE-2.0