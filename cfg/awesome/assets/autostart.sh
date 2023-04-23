cd $(dirname $0)

function exe () {
    local cmd=$@
    if ! pgrep -x $cmd; then
        $cmd &
    fi
}

exe picom --config=./picom/picom.conf -b
exe $HOME/.config/awesome/scripts/redshift.sh restore
exe setxkbmap -layout "us,ru" -option "grp:alt_shift_toggle"
exe syndaemon -i 0.5 -K -R -d

xrdb merge $HOME/.Xresources
