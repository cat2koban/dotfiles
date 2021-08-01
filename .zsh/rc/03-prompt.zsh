if [[ ! -d $HOME/.zsh/pure ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}SINDRESORHUS%F{220} AWESOME PROMPT (%F{33}sindresorhus/pure%F{220})…%f"
    command mkdir -p "$HOME/.zsh"
    command git clone https://github.com/sindresorhus/pure "$HOME/.zsh/pure" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
PURE_PROMPT_SYMBOL='%F{green}(%F{red}๑%F{white}°口°%F{red}๑%F{green})%F{white}{ '
