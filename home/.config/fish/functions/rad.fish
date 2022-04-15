function rad
    if string match -rq '^(-b|-s|-a)' -- $argv
        if pgrep ffplay >/dev/null
            pkill ffplay
            or return 1
        end
    end

    argparse -X0 'b' 's' 'a' 'h/help' -- $argv
    or return

    if set -q _flag_b
        while true
            read -l -P 'relax, indie, mix, electro, or exit? (r/i/m/e/x) ' choc
            switch $choc
                case r
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -live_start_index -3 -infbuf \
                    -i 'https://as-hls-ww-live.akamaized.net/pool_904/live/ww/bbc_radio_one_relax/bbc_radio_one_relax.isml/bbc_radio_one_relax-audio%3d48000.norewind.m3u8' >/dev/null 2>&1 & disown
                    return 0
                case i
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -live_start_index -3 -infbuf \
                    -i 'https://as-hls-ww-live.akamaized.net/pool_904/live/ww/bbc_6music/bbc_6music.isml/bbc_6music-audio%3d48000.norewind.m3u8' >/dev/null 2>&1 & disown
                    return 0
                case m
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -live_start_index -3 -infbuf \
                    -i 'https://as-hls-ww-live.akamaized.net/pool_904/live/ww/bbc_radio_three/bbc_radio_three.isml/bbc_radio_three-audio%3d48000.norewind.m3u8' >/dev/null 2>&1 & disown
                    return 0
                case e
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -live_start_index -3 -infbuf \
                    -i 'https://as-hls-ww-live.akamaized.net/pool_904/live/ww/bbc_radio_one_dance/bbc_radio_one_dance.isml/bbc_radio_one_dance-audio%3d48000.norewind.m3u8' >/dev/null 2>&1 & disown
                    return 0
                case x
                    return 0
                case '*'
                    printf "\nplease answer with: r, i, m, e, or x to exit rad"
            end
        end
    end

    if set -q _flag_s
        while true
            read -lP 'ambient, chill, n5md, loud, u80s, aj, exit? (a/c/n/l/u/j/x) ' ch
            switch $ch
                case a
                    if not set -q url_a[1]
                        set -g url_a (curl --silent 'https://somafm.com/deepspaceone32.pls' 2>&1 | grep -i '^file1' | cut -d '=' -f 2-)
                    end
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -infbuf -i $url_a[1] >/dev/null 2>&1 & disown
                    return 0
                case c
                    if not set -q url_c[1]
                        set -g url_c (curl -s 'https://somafm.com/spacestation32.pls' 2>&1 | grep -i '^file1' | cut -d '=' -f2-)
                    end
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -infbuf -i $url_c[1] >/dev/null 2>&1 & disown
                    return 0
                case n
                    if not set -q url_n[1]
                        set -g url_n (curl --silent 'https://somafm.com/n5md32.pls' 2>&1 | grep -i '^file1' | cut -d '=' -f 2-)
                    end
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -infbuf -i $url_n[1] >/dev/null 2>&1 & disown
                    return 0
                case l
                    if not set -q url_l[1]
                        set -g url_l (curl --silent 'https://somafm.com/metal32.pls' 2>&1 | grep -i '^file1' | cut -d '=' -f2-)
                    end
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -infbuf -i $url_l[1] >/dev/null 2>&1 & disown
                    return 0
                case u
                    if not set -q url_u[1]
                        set -g url_u (curl --silent 'https://somafm.com/u80s32.pls' 2>&1 | grep -i '^file1' | cut -d '=' -f 2-)
                    end
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -infbuf -i $url_u[1] >/dev/null 2>&1 & disown
                    return 0
                case j
                    if not set -q url_j[1]
                        set -g url_j (curl --silent 'https://somafm.com/sonicuniverse32.pls' 2>&1 | grep -i '^file1' | cut -d '=' -f2-)
                    end
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -infbuf -i $url_j[1] >/dev/null 2>&1 & disown
                    return 0
                case x
                    return 0
                case '*'
                    printf "\nplease answer with: a, c, n, l, u, j, or x to exit rad"
            end
        end
    end

    if set -q _flag_a
        while true
            read -l -P 'mix, jazz, classic, indie, or exit? (m/j/c/i/x) ' choce
            switch $choce
                case m
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -live_start_index -3 -infbuf \
                    -i 'https://abcradiolivehls-lh.akamaihd.net/i/doublejnsw_1@327293/index_32_a-b.m3u8' >/dev/null 2>&1 & disown
                    return 0
                case j
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -live_start_index -3 -infbuf \
                    -i 'https://abcradiolivehls-lh.akamaihd.net/i/abcjazz_1@327288/index_32_a-b.m3u8' >/dev/null 2>&1 & disown
                    return 0
                case c
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -live_start_index -3 -infbuf \
                    -i 'https://abcradiolivehls-lh.akamaihd.net/i/classicfmnsw_1@327292/index_32_a-b.m3u8' >/dev/null 2>&1 & disown
                    return 0
                case i
                    ffplay -volume 100 -nodisp -hide_banner -nostats -loglevel fatal -live_start_index -3 -infbuf \
                    -i 'https://abcradiolivehls-lh.akamaihd.net/i/triplejnsw_1@327300/index_32_a-b.m3u8' >/dev/null 2>&1 & disown
                    return 0
                case x
                    return 0
                case '*'
                    printf "\nplease answer with: m, j, c, i, or x to exit rad"
            end
        end
    end

    if set -q _flag_h
        echo '
        ( webradio )

        the stations: [b]bc [s]omafm [a]bc )

        $ rad -b
        $ rad -s
        $ rad -a

        quit: super + alt + u → release → m
        ' | cut -c9-
        return 0
    end

    return 1
end
