function mpvl
    mpv --profile=local-video $argv >/dev/null 2>&1 & disown
    and exit
end
