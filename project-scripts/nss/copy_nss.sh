#!/bin/bash

#####################################
#   Copy NSS file to Test Server    #
#                                   #
#   Param: $1 - Full path of file   #
#               to copy             #
#####################################
rsync -aChPz --delete --exclude-from '/home/twray/Projects/project-scripts/nss/rsync_excludes.txt' /home/twray/Projects/nss/ twray@nss:/home/twray/Projects/nss/
