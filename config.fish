set EDITOR vim

set -l base03  002b36
set -l base02  073642
set -l base01  586e75
set -l base00  657b83
set -l base0   839496
set -l base1   93a1a1
set -l base2   eee8d5
set -l base3   fdf6e3
set -l yellow  b58900
set -l orange  cb4b16
set -l red     dc322f
set -l magenta d33682
set -l violet  6c71c4
set -l blue    268bd2
set -l cyan    2aa198
set -l green   859900

set -g fish_color_normal      $base0
set -g fish_color_command     $base0
set -g fish_color_quote       $cyan
set -g fish_color_redirection $base0
set -g fish_color_end         $base0
set -g fish_color_error       $red
set -g fish_color_param       $blue
set -g fish_color_comment     $base01
set -g fish_color_match       $cyan
set -g fish_color_search_match "--background=$base02"
set -g fish_color_operator    $orange
set -g fish_color_escape      $cyan

set -g fish_color_hostname    $cyan
set -g fish_color_cwd         $yellow
set -g fish_color_git         $green

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  echo (basename $PWD)" | "$USER "-> "(__fish_git_prompt)
  set last_status $status

  set_color $fish_color_cwd
  set_color normal


  set_color normal
end

set fish_greeting ""
status --is-interactive; and source (rbenv init -|psub)

alias v 'vim'
