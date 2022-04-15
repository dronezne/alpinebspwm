function mix
    set -l sd (cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_driver)
    set -l st (cat /sys/devices/system/cpu/smt/control)
    set -l et (cat /proc/sys/kernel/random/entropy_avail)
    set -l ms (grep -H '' /sys/devices/system/cpu/vulnerabilities/*)
    set -l sg (cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_gover*)

    printf \\n

    read -l -P 'reconcile permissions? (n/y) ' ch

    if test "$ch" = y
        if test -g /usr/bin/wall
            doas chmod g-s /usr/bin/wall
        end
        if not stat -c '%A' /boot \
        | grep -w -q 'drwx'
            doas chmod go-rwx /boot
        end
        if not stat -c '%A' /lib/modules \
        | grep -w -q 'drwx'
            doas chmod go-rwx /lib/modules
        end
    end

    doas printf "\nmitigation status:\n\n"
    printf "%s\n" $ms | cut -d '/' -f7- \
    | sed 's/:/ \/ /'

    printf "\nSMT: "
    echo -- "$st"

    printf "\nentropy: "
    echo -- "$et"

    printf "\nsuid/sgid bits \u2193\n\n"
    doas find / -perm /u=s,g=s -type f 2>/dev/null

    printf "\ncapabilities \u2193\n\n"
    if ! getcap -r /usr/bin /usr/sbin | grep .
        printf "found nothing\n"
    end

    printf "\nsticky bits \u2193\n\n"
    if ! doas find / -perm /a=t -type f 2>/dev/null \
    | grep .
        printf "found nothing\n"
    end

    printf "\npermissions \u2193\n\n"
    stat -c '%A %n' /lib/modules /boot

    printf "\nscaling d/g \u2193\n\n"
    paste (printf "%s\n" $sd | psub) \
    (printf "%s\n" $sg | psub)

    printf \\n
end
