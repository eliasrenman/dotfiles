function main() {
    # Pipewire
    active_device=$(pamixer --get-default-sink | awk -F'"' '/Default sink/{next} {print $(NF-1)}')
   
    VOLUME=$(pamixer --get-volume-human)
   
    action=$1
    if [ "${action}" == "up" ]; then
        pamixer -i 5
    elif [ "${action}" == "down" ]; then
        pamixer -d 5
    elif [ "${action}" == "mute" ]; then
        pamixer -t
    else
        if [ "$VOLUME" == "muted" ]; then
            echo "$active_device 󰝟"
        else
            echo "$active_device   $VOLUME"
        fi
    fi
}

main $@