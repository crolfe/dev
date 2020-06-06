#!/usr/bin/env python3
# Adapted from Andrey Tataranovich script www.tataranovich.com/public/scripts/xkbmapd.py
# to load the user .Xmodmap file on 1) start, 2) resume and 3) layout switch
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

import os
import sys


xmodmap = os.path.expanduser('~/.Xmodmap')
if not os.path.isfile(xmodmap):
    print('File not found: ' + xmodmap)
    sys.exit(1)


# The command xmodmap ~/xmodmap
def do():
    command = 'xmodmap ' + xmodmap
    if os.path.isfile(xmodmap):
        os.system(command)


if __name__ == '__main__':
    do()
