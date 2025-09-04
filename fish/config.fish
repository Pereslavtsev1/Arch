function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end
zoxide init fish | source
starship init fish | source
if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
end

set GEMINI_API_KEY AIzaSyDMEEhcr3BsusbNuSEWfm1cwULIc5VMWKE

alias pamcan pacman
alias ls 'eza --icons'
alias clear "printf '\033[2J\033[3J\033[1;1H'"
alias q xh
alias v "nvim ."
alias cls clear
alias p pnpm
alias g git
alias gpom 'git push origin main'
alias y yay
alias hm home-manager

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
set -x AVANTE_GEMINI_API_KEY AIzaSyDMEEhcr3BsusbNuSEWfm1cwULIc5VMWKE

set --universal nvm_default_version v24.6.0
