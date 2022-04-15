```
       ______
      (  mu  )
       ------
          \   ^__^
           \  (oo)\_______                  a l p i n e b s p w m
              (__)\       )\/\
                  ||----w |
                  ||     ||
```

<br/>

## 1: howtostart

[alpine](https://alpinelinux.org/downloads/) standard | extended | virtual image & [installation](https://docs.alpinelinux.org/user-handbook/0.1a/Installing/manual.html)

```bash
# example
setup-keymap → setup-hostname → setup-interfaces  ↓
  rc-service networking start → setup-timezone    ↓
setup-apkrepos → passwd → setup-sshd → setup-ntp  ↓
setup-disk                              → reboot
```

## 2: git, clone

```
# apk add git
# git clone --depth 1 https://github.com/dronezne/alpinebspwm.git
```

## 3: run script

```
# sh alpinebspwm/install.sh
```

## overview

```
↓download the screenshot: https://github.com/dronezne/alpinebspwm/blob/main/screen.png
workspace | battery | alsa ( klick → mute ) | time ( klick → date ) | connection # bar
super + u → release → press 1 # poweroff ↓ | super + u → release → press 2 # reboot ↓↑
```

## ~ screen

```
if you run 'it' in a vm, adapt line 26 of
bspwmrc (default 1920x1080) to your needs
```

## trivials

```
.. but non-self-explanatory
 - execute commands as another user → run: doas
 - local-video-profile: $ mpvl <_path_to_file_>
 - local-audio-detached: $ ffp <_path_to_file_>
 | quit ffp, rad: super + alt + u → release → m
 - a cheat sheet: super + u → release → press h
 - if laptop: $ doas powertop --html=power.html
 - interrupt key = ctrl+shift+c (ctrl+c = copy)
```

## function

```bash
$ cbb       # <cmd> busybox ?
$ nnn       # tiny adjustment
$ dnv       # doasnvim ~/init
$ 2fa       # <foo>  oathtool
$ cpu       # (oo) → $ cpu -h
$ esa       # eval → ssh agent
$ img       # picture overview
$ chc       # chrony check ntp
$ iso       # wipe -a/-o write
$ cfn       # cleanup filename
$ mix       # jumbled overview
$ off       # net → go offline
$ trim      # fstrim / +output
$ logs      # (oo) → $ logs -h
$ mpvl      # mpv localprofile
$ pkgi      # info: $ pkgi -h
$ fhd       # <foo> dd fish ↓
$ rca       # status services
$ ffp       # ffplay detached
$ rad       # (oo) → $ rad -h
$ man       # more less 4 man
$ ipt       # (oo) → $ ipt -h
$ mpc       # kernel ↓modules
$ sh2       # sync /home/ to:
$ rcl       # rclog: $ rcl -h
$ ff        # ? → $ ff --help
$ pw        # pass: → $ pw -h
$ cd        # cd + list files
$ nt        # note: → $ nt -h
$ on        # net → go online
$ se        # hwmon  coretemp
$ qv        # <kuh> ? var set
$ yt        # ⏎ <url> ↓stream
$ rs        # reset  terminal
$ fp        # fish record off
$ vi        # stands 4 neovim
$ gd        # git diff less+c
```

## shorten

```bash
$ fhd      # no shell history
$ 2fa      # no shell history
$ pw       # no shell history
$ nt       # no shell history
$ rm       # careful +verbose
# git commands: $ abbr --show
```

## binding

- `super + u` → release → [press](https://github.com/dronezne/alpinebspwm/blob/main/home/.config/sxhkd/sxhkdrc) `p`
