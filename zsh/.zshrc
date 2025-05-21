# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Only enable zoxide if it's installed
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
fi

if command -v fdfind >/dev/null 2>&1; then
  alias fd=fdfind
fi

# android sdk

if command -v java >/dev/null 2>&1; then
    export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
    export PATH="$JAVA_HOME/bin:$PATH"
fi

export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
[ -x "$ANDROID_SDK_ROOT/cmdline-tools/latest/bin" ] && export PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH"
[ -x "$ANDROID_SDK_ROOT/platform-tools" ] && export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
[ -x "$ANDROID_SDK_ROOT/emulator" ] && export PATH="$ANDROID_SDK_ROOT/emulator:$PATH"

# >>> NVM Configuration >>>
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"        # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Optional: loads nvm bash_completion
# <<< NVM Configuration <<<

[[ -d "/usr/local/go" ]] && export PATH="/usr/local/go/bin:$PATH"
[[ -d "$HOME/go" ]] && export PATH="$HOME/go/bin:$PATH"

[[ -d "$HOME/nvim-app/bin" ]] && export PATH="$HOME/nvim-app/bin:$PATH"

# Bun setup
[[ -d "$HOME/.bun" ]] && export BUN_INSTALL="$HOME/.bun"
[ -x "$BUN_INSTALL/bin" ] && export PATH="$BUN_INSTALL/bin:$PATH"


# bun completions
[ -s "/home/ikhwan-satrio/.bun/_bun" ] && source "/home/ikhwan-satrio/.bun/_bun"

