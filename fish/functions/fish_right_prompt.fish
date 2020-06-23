function fish_right_prompt
    set_color $fish_color_autosuggestion ^/dev/null; or color 555
    date "+%H:%M:%S"
    set_color normal
end
