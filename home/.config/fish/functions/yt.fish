function yt
    read -laP 'url: ' url

    if set -q url[2]
        return 1
    end

    if string match -qr '(invid|caden|yewt).*\?v=.*' -- $url
        clear; mpv --profile=youtube --ytdl-format='bestvideo[height<=?720][fps<=?30][vcodec!=?vp9]+bestaudio/best' \
        https://youtu.be/(echo -- "$url" | cut -d '=' -f 2-)
    else
        return 1
    end
end
