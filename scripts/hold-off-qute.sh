#!/usr/bin/env bash

# Qutebrowser launch hold off script. If added to autorun, it prevents the
# browser from running until there's an Internet connection. Helps to
# avoid unloaded web pages if run simultaneously with WM.

if pgrep -x qutebrowser >/dev/null 2>&1; then
    exit 0
fi

until ping -c1 8.8.8.8 &>/dev/null; do
    sleep 1
done

exec qutebrowser
