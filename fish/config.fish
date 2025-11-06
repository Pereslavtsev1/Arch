if status is-interactive
    # Starship custom prompt
    starship init fish | source

    zoxide init fish | source
    # Direnv + Zoxide
    #
    command -v direnv &>/dev/null && direnv hook fish | source
    command -v zoxide &>/dev/null && zoxide init fish --cmd cd | source
    fzf --fish | source
    set GEMINI_API_KEY AIzaSyCNhiKmUfqLnwr_ging3DGCUqrw7fS8yok

    alias pamcan pacman
    alias ls 'eza --icons'
    alias clear "printf '\033[2J\033[3J\033[1;1H'"

    # Abbrs
    abbr q xh
    abbr v "nvim ."
    abbr cls clear
    abbr p pnpm
    abbr g git
    abbr y yay
    abbr py python
    abbr lg lazygit
    abbr y yay
    abbr gpom 'git push origin main'
    abbr gr 'go run'
    abbr gd 'git diff'
    abbr ga 'git add .'
    abbr gc 'git commit -am'
    abbr gl 'git log'
    abbr gs 'git status'
    abbr gst 'git stash'
    abbr gsp 'git stash pop'
    abbr gp 'git push'
    abbr gpl 'git pull'
    abbr gsw 'git switch'
    abbr gsm 'git switch main'
    abbr gb 'git branch'
    abbr gbd 'git branch -d'
    abbr gco 'git checkout'
    abbr gsh 'git show'
    abbr l ls
    abbr ll 'ls -l'
    abbr la 'ls -a'
    abbr lla 'ls -la'

    # Custom colours
    cat ~/.local/state/caelestia/sequences.txt 2>/dev/null

    set -x AVANTE_GEMINI_API_KEY AIzaSyCNhiKmUfqLnwr_ging3DGCUqrw7fS8yok

    set --universal nvm_default_version latest
    # For jumping between prompts in foot terminal
    function mark_prompt_start --on-event fish_prompt
        echo -en "\e]133;A\e\\"
    end
end
