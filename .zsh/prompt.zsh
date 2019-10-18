function _make_prompt() {
    local _newline=$'\n'
		local top="%F{yellow}%n%f at %F{magenta}%m%f %F{red}[%f%~%F{red}]%f ${vcs_info_msg_0_}"
    local bottom="%F{blue}$ %f"
    eval "$1='${_newline}${top}${_newline}${bottom}'"
}

autoload -Uz vcs_info
local branch=$'\ue0a0'
zstyle ':vcs_info:*' formats "%F{cyan}$branch %b %f"
zstyle ':vcs_info:*' actionformats "%F{cyan}$branch %b|%a %f"
precmd() {
    vcs_info
    _make_prompt PROMPT
}
