# include PATH to go (if it exists on this system)
if [ -d "/usr/local/go/bin" ] ; then
    export PATH=$PATH:/usr/local/go/bin
fi

# setup environment for cargo (if it exists on this system)
if [ -f "$HOME/.cargo/env" ] ; then
    . "$HOME/.cargo/env"
fi

# setup environment for nvm (if it is used on this system)
if [ -d "$HOME/.nvm" ] ; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# setup environment for the Garmin Connect IQ SDK
if [ -f "$HOME/.Garmin/ConnectIQ/current-sdk.cfg" ] ; then
    export PATH=$PATH:`cat $HOME/.Garmin/ConnectIQ/current-sdk.cfg`/bin
fi

# setup environment for Android Studio
if [ -d "$HOME/.android-studio" ] ; then
    export PATH=$PATH:$HOME/.android-studio/bin
fi


# setup environment for login shell
if [ -f "$HOME/.env" ]; then
    . "$HOME/.env"
fi

# add binaries in ~/.local/bin to PATH (if it exists on this system)
if [ -d "$HOME/.local/bin" ] ; then
    export PATH=$PATH:$HOME/.local/bin
fi

if [ -d "$HOME/.local/share/gem/ruby/3.0.0" ] ; then
    export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin
fi
