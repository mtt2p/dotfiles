defaults write NSGlobalDomain ApplePressAndHoldEnabled -boolean true



# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done
