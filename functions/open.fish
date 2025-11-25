function open
    command xdg-open $argv >/dev/null 2>&1 &
    disown (jobs -l | tail -n1 | awk '{print $2}')
end

