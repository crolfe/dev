#!/usr/bin/env python
# -*- coding: utf8 -*-
"""
bat

========================================
oooo    oooo               .
`888   .8P'              .o8
 888  d8'     .ooooo.  .o888oo  .oooo.
 88888[      d88' `88b   888   `P  )88b
 888`88b.    888   888   888    .oP"888
 888  `88b.  888   888   888 . d8(  888
o888o  o888o `Y8bod8P'   "888" `Y888""8o
               @nilsu.org
=== Copyright (C) 2017  Dakota Walsh ===
"""

# imports
from __future__ import division

import os
import sys

# constants
AC = '/sys/class/power_supply/AC'
BAT0 = '/sys/class/power_supply/BAT0'
BAT1 = '/sys/class/power_supply/BAT1'
bat0 = ''
bat1 = ''
bat0Max = ''
bat1Max = ''

with open(os.path.join(AC, 'online'), 'r') as f:
    ac = f.readline()


def _max_charge(bat):
    with open(os.path.join(bat, 'energy_full'), 'r') as f:
        try:
            return int(f.readline())
        except Exception:
            return None


def _current_charge(bat):
    with open(os.path.join(bat, 'energy_now'), 'r') as f:
        try:
            return int(f.readline())
        except Exception:
            return None


bat0 = _current_charge(BAT0)
bat0Max = _max_charge(BAT0)
bat1 = _current_charge(BAT1)
bat1Max = _max_charge(BAT1)

# check that battery values were found
if not bat0:
    # this battery is internal, so if it's missing something is wrong
    sys.exit("battery 0 not found")

# convert ac to boolean
ac = bool(int(ac))

# convert to percent
current_charge = bat0
max_charge = bat0Max

if bat1 is not None and bat1Max is not None:
    current_charge += bat1
    max_charge += bat1Max

batPercent = (current_charge / max_charge) * 100

if batPercent > 99:
    batPercent = 100

batPercent = int(batPercent)

# printing prefix

prefix = '?'
if ac:
    prefix = ''
else:
    if (int(batPercent) <= 20):
        prefix = ' '
    elif (int(batPercent) > 20 and int(batPercent) <= 40):
        prefix = ' '
    elif (int(batPercent) > 40 and int(batPercent) <= 60):
        prefix = ' '
    elif (int(batPercent) > 60 and int(batPercent) <= 90):
        prefix = ' '
    elif (int(batPercent) > 90):
        prefix = ' '

print("{} {}%".format(prefix, str(int(batPercent))))
