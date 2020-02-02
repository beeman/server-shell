# Theme with full path names and hostname
# Handy if you work on different servers all the time;
local user_status="%(!.%{$fg_bold[red]%}.%{$fg[green]%})%n%{$reset_color%}"
local host_status="%{$fg[blue]%}%M%{$reset_color%}"
local user_host="[${user_status}@${host_status}]"

local current_dir="%{$fg[green]%}%c%{$reset_color%}"

local prompt="%(!.#.$)"
local prompt_status="%(?:${prompt}:%{$fg_bold[red]%}${prompt})"

PROMPT='${user_host} ${current_dir} $(git_prompt_info)${prompt_status} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
