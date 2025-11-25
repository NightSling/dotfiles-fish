function nvd
    if test (count $argv) -eq 0
        set argv .
    end
    setsid neovide $argv >/dev/null 2>&1 &
end
