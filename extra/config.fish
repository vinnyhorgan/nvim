function fish_greeting
  echo ""
end

alias ls="eza --group-directories-first --icons"

abbr -a c clear
abbr -a v nvim
abbr -a v. "nvim ."
abbr -a l ls
abbr -a la "ls -a"
abbr -a ll "ls -la"
abbr -a t "tree"
abbr -a serve "python -m http.server"

abbr -a update yay
abbr -a install "yay -S --needed"
abbr -a remove "yay -Rns"

abbr -a g git

abbr -a gd "git diff"
abbr -a ga "git add -A"
abbr -a gc "git commit -m"
abbr -a gp "git push"
abbr -a gpl "git pull"

abbr -a gs "git status -sb"
abbr -a gl "git log --graph --decorate --oneline -n 30"

abbr -a cpy wl-copy
abbr -a pst wl-paste

function mkcd --description "mkdir -p then cd"
  if test (count $argv) -ne 1
    echo "usage: mkcd <dir>" >&2
    return 1
  end
  mkdir -p -- "$argv[1]"
  and cd -- "$argv[1]"
end

function __restore_ibeam --on-event fish_postexec
  printf '\e[5 q'
end

function __restore_prompt --on-event fish_prompt
  printf '\e[5 q'
end

if test -d $HOME/.local/bin
  fish_add_path -g $HOME/.local/bin
end
