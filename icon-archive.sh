#!/usr/bin/env bash




##
## ## go to work dir
##

cd icons




##
## ## archive / default edition
##

#tar cJf GreyStone.tar.xz GreyStone
tar -I 'xz -9 -T0' -cf GreyStone.tar.xz GreyStone




##
## ## archive / circle edition
##

#tar cJf GreyStone-Circle.tar.xz GreyStone-Circle
tar -I 'xz -9 -T0' -cf GreyStone-Circle.tar.xz GreyStone-Circle
