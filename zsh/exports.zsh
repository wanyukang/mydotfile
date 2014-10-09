# Currently this path is appended to dynamically when picking a ruby version
# zshenv has already started PATH with rbenv so append only here
#export PATH=$PATH:/usr/local/bin:/usr/local/sbin:$HOME/bin
export PATH=$PATH:/usr/local/sbin:$HOME/bin

# remove duplicate entries
typeset -U PATH

# Set default console Java to 1.6
if [[ $IS_MAC -eq 1 ]]; then
    export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
fi

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
if [[ $IS_MAC -eq 1 ]]; then
    export EDITOR='vim'
fi
if [[ $IS_LINUX -eq 1 ]]; then
    export EDITOR='vim'
fi

# Set LC_ALL="UTF8"
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

#JAVA
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home;
export PATH=${PATH}:$JAVA_HOME;

#Android env
export ANDROID_HOME=/Users/wanyukang/dev/adt-bundle-mac-x86_64-20140321/sdk;
export ANDROID_HOME_TOOLS=/Users/wanyukang/dev/adt-bundle-mac-x86_64-20140321/sdk/tools;
export ANDROID_HOME_PLATFORM_TOOLS=/Users/wanyukang/dev/adt-bundle-mac-x86_64-20140321/sdk/platform-tools;
export ANDROID_BUILD_TOOLS=/Users/wanyukang/dev/adt-bundle-mac-x86_64-20140321/sdk/build-tools/19.0.1;
export PATH=${PATH}:$ANDROID_HOME;
export PATH=${PATH}:$ANDROID_HOME_TOOLS;
export PATH=${PATH}:$ANDROID_HOME_PLATFORM_TOOLS;
export PATH=${PATH}:$ANDROID_BUILD_TOOLS;

#OCLint
export OCLINT_HOME=/Users/wanyukang/dev/oclint/oclint-0.9.dev.5dba345;
export PATH=$OCLINT_HOME/bin:$PATH;

#scan-build
export CHECKER_HOME=/Users/wanyukang/dev/clang/checker-276;
export PATH=$CHECKER_HOME:$PATH;

# Virtual Environment Stuff
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects/django
if [[ $HAS_VIRTUALENV -eq 1 ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi
