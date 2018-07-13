#!/usr/bin/env bash
echo  'fs.inotify.max_user_watches = 524288' | sudo tee --append /usr/lib/sysctl.d/50-default.conf
sudo sysctl -p --system
