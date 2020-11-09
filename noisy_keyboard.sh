#!/bin/bash
xinput test 12 | sed -u \
-e 's/.*[0-9][0-9][0-9]//' \
-e 's/key press.*36/aplay -q return.wav \&/' \
-e 's/key press.*65/aplay -q spacebar.wav \&/' \
-e 's/key press.*\(1[0-9]\|2[0-1]\|2[4-9]\|3[0-5]\|3[8-9]\|4[0-8]\|5[2-9]\|6[0-1]\)/aplay -q  typewriter.wav \&/' \
-e 's/key press.*//' \
-e 's/.*\(release\).*//' \
| bash
