# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi
# . "$HOME/.cargo/env"

export JAVA_HOME=/usr/lib/jvm/jdk-21-oracle-x64
export MAVEN_HOME=/usr/local/lib/apache-maven-3.9.5

export PATH=$JAVA_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$PATH:/usr/local/go/bin

# opam configuration
test -r /home/sjohn/.opam/opam-init/init.sh && . /home/sjohn/.opam/opam-init/init.sh >/dev/null 2>/dev/null || true

# Added by Toolbox App
export PATH="$PATH:/home/sjohn/.local/share/JetBrains/Toolbox/scripts"

export JAVA_HOME=/usr/lib/jvm/jdk-21-oracle-x64
export MAVEN_HOME=/usr/local/lib/apache-maven-3.9.5

export PATH=$JAVA_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export XDG_CONFIG_HOME=~/.config
export PATH=$PATH:/usr/bin/android_sdk/cmdline-tools/latest/bin

# android sdk for mobile app development
export ANDROID_HOME=$HOME/Android/Sdk
export adb=$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$adb

export PATH=$PATH:$HOME/Applications/android-studio-2024.1.2.13-linux/android-studio/bin/

# alias
alias vim="~/Applications/nvim.appimage"
alias nvim="~/Applications/nvim.appimage"
alias csm="cd ~/OneDrive/CSM"
alias onedrive='nohup python3 ~/Downloads/OneDriveGUI/src/OneDriveGUI.py > /dev/null 2>&1&'
export PATH="$HOME/Applications/zig-linux-x86-0.12.0:$PATH"
alias gst='git status --short'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
