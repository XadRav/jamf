#!/bin/bash

# Sets variable so these commands run for logged in user
curUser=`ls -l /dev/console | cut -d " " -f 4`

# Resets Dock to macOS default
sudo -u $curUser defaults delete com.apple.dock
killall Dock
sleep 5

# Removes all Dock icons
sudo -u $curUser defaults write com.apple.dock persistent-apps -array

# Set Dock size to 47
sudo -u $curUser defaults write com.apple.dock tilesize -int 47

# Add default apps
sudo -u $curUser defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>file:///System/Applications/Launchpad.app/</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>'
sudo -u $curUser defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>file:///Applications/Google%20Chrome.app/</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>'
sudo -u $curUser defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>file:///Applications/Microsoft%20Outlook.app/</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>'
sudo -u $curUser defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>file:///Applications/Microsoft%20Teams%20(work%20or%20school).app/</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>'
sudo -u $curUser defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>file:///Applications/Microsoft%20Word.app/</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>'
sudo -u $curUser defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>file:///Applications/Microsoft%20Excel.app/</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>'
sudo -u $curUser defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>file:///Applications/Dropbox.app/</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>'

# Restart Dock
killall Dock
