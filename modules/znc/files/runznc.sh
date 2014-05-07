#!/bin/bash
pkill -SIGUSR1 znc
pgrep znc | xargs kill
su znc -l -c znc
