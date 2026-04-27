function load_env
    set -l file ".env"

    if test (count $argv) -gt 0
        set file $argv[1]
    end

    if test ! -f $file
        echo "File not found: $file"
        return 1
    end

    for line in (cat $file)
        if test -z "$line"; or string match -qr '^\s*#' -- $line
            continue
        end

        # split only on the first '='
        set key (string split -m 1 '=' -- $line)[1]
        set value (string split -m 1 '=' -- $line)[2]

        set -xg $key $value
    end
end
