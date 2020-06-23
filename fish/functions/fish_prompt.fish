# git prompt toggle settings
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'verbose'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showcolorhints 'yes'

# git prompt color overides
set __fish_git_prompt_color_branch '78a6f0'
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind 'dc453d'
set __fish_git_prompt_color_cleanstate '009900'
set __fish_git_prompt_color_invalidstate 'CC3333'

# git prompt chars overrides
set __fish_git_prompt_char_stagedstate 'Δ'
set __fish_git_prompt_char_upstream_diverged '±'
set __fish_git_prompt_char_cleanstate 'ø'

function fish_prompt
    set last_status $status

    set_color '99FFCC'
    printf '⋊>'
    set_color normal
  
    set_color '009900'
    printf ' [%s]' (pwd)
    set_color normal

    printf '%s ' (__fish_git_prompt)
    set_color normal
end
