while true
  do
    player_status=''$(playerctl status -p chromium 2> /dev/null)
    if [ "$player_status" = "Playing" ]; then
      echo "$(playerctl metadata artist -p chromium) - $(playerctl metadata title -p chromium)"
    else
      echo "Nothing is playing"
    fi
    sleep 1
  done

