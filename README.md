# Linux-Mint-SpotDL-installer-SpotDL-Auto-Syncer
Shows you how to use SpotDL on Linux Mint and includes a file to auto sync a playlist

# How to install on Linux Mint
'''
sudo apt install pipx
pipx install spotdl
pipx ensurepath
pipx run spotdl --download-ffmpeg
'''

# Usage
'''
cd [Where you would like to place your music folder]
mkdir Music
cd Music
mkdir [Your Playlist Folder Name]
cd [Your Playlist Folder Name]
pipx run spotdl "your link" 
'''

# If you would like to sync
'''
pipx run spotdl sync "enter link here" --save-file [playlist name here].sync.spotdl

# Example grabbed from the SpotDL Docs on how to sync
pipx run spotdl sync https://open.spotify.com/playlist/37i9dQZF1E8UXBoz02kGID --save-file "the-weeknd.sync.spotdl"
'''

#Syncer Usage
First download the syncer and place it in the directory where you would like you music downloaded then in the terminal of that folder run 
'''
chmod +x syncer.sh
# Then to run 
./syncer.sh


