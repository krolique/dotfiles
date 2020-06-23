# settings for the fish_git_prompt function. 
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'verbose'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_color_branch '78a6f0'
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red
set __fish_git_prompt_char_stagedstate 'Ø'
set __fish_git_prompt_char_upstream_diverged '±'

function fish_prompt
    set last_status $status

    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal
  
    printf '%s ' (__fish_git_prompt)
    set_color normal
end
