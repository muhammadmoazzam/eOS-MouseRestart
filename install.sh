#!/usr/bin/env bash

echo '#!/bin/bash

# $1 is the state (pre or post)-sleep
if [[ $1 == post ]]; then
    modprobe -r psmouse
    modprobe psmouse
fi' > /lib/systemd/system-sleep/psmouse-refresh
