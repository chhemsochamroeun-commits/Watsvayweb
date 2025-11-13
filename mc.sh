#!/data/data/com.termux/files/usr/bin/bash

# Update and upgrade packages
pkg update -y && pkg upgrade -y

# Install required packages individually
pkg install openjdk-21 -y
pkg install wget -y
pkg install unzip -y

# Create Minecraft server directory
mkdir -p ~/mcserver && cd ~/mcserver

# Download PaperMC server
wget https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/133/downloads/paper-1.21.1-133.jar -O server.jar

# Accept EULA automatically
echo "eula=true" > eula.txt

# Start the Minecraft server with 2GB RAM
java -Xmx2G -Xms2G -jar server.jar --nogui