#!/usr/bin/env bash




##
## ## update-icon-cache / default edition
##

cd icons/GreyStone

gtk-update-icon-cache -f .

cd ${OLDPWD}




##
## ## update-icon-cache / circle edition
##

cd icons/GreyStone-Circle

gtk-update-icon-cache -f .

cd ${OLDPWD}
