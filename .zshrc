# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"


export DISPLAY=:0

plugins=(git gitfast nvm)

alias shup='source ~/.zshrc'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
function mkcd
{
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

source $ZSH/oh-my-zsh.sh

plugins=(git gitfast nvm)
unalias ls
alias ls='ls -a -F -G --color=auto'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Android Dev
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
export ANDROID_HOME=/mnt/o/Coding/Installations/Android/Sdk
export WSL_ANDROID_HOME=/home/leonardo/Android
export NDK_HOME="$HOME/Android/ndk/26.2.11394342"
export PATH="$JAVA_HOME/bin:$ANDROID_HOME/emulator:$WSL_ANDROID_HOME/tools:$WSL_ANDROID_HOME/tools/bin:$ANDROID_HOME/cmdline-tools/latest:$ANDROID_HOME/cmdline-tools/latest/bin:$WSL_ANDROID_HOME/platform-tools:$PATH"


alias adb="/mnt/o/Coding/Installations/Android/Sdk//platform-tools/adb.exe"
  
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# pnpm
export PNPM_HOME="/home/leonardo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
eval "$(zoxide init zsh)"
# pnpm end
