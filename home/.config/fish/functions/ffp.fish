function ffp
    if pgrep ffplay >/dev/null
        pkill ffplay
        or return 1
    end

    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -autoexit \
    -noinfbuf -i $argv >/dev/null 2>&1 & disown
end
