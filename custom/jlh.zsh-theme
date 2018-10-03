for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
eval PR_$color='%{$fg_bold[${(L)color}]%}'
done
PR_NO_COLOR="%{$terminfo[sgr0]%}"
PROMPT=$'╔═ ¦%T¦${PR_GREEN}%n${PR_NO_COLOR}@${PR_YELLOW}%M${PR_NO_COLOR} { ${PR_CYAN}%~ ${PR_NO_COLOR}} $(git_prompt_info)
╚► %$: '

ZSH_THEME_GIT_PROMPT_PREFIX="%{${PR_NO_COLOR}%}{${PR_BLUE}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${PR_NO_COLOR}%}}%{${PR_NO_COLOR}%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{${PR_RED}%}✗%{${PR_GREEN%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
