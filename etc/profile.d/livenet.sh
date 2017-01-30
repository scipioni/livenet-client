# setting prompt
txtred='\e[0;31m' # Red
txtrst='\e[0m'
bakylw='\e[43m'   # Yellow

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

if [ ! "$(cat /etc/hostname)" = "$(hostname)" ]; then
    debian_chroot="$(cat /etc/hostname)-$(cat /etc/debian_chroot)-chroot"
    PS1="${bakylw}${debian_chroot:+($debian_chroot)}${txtrst} \u@\h:\w\$ "
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

alias l="ls -alh --color"
if [ -n "${DISPLAY}" ]; then
    xhost +si:localuser:livenet
fi
