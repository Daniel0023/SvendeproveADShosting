#!/bin/bash
#Create script variables
filepath="/var/www/html/"
TimeStamp=$(date '+%Y-%m-%d-%H:%M')
Logfilepath="/var/log/nginxsynclog"
Logfile="$Logfilepath/synclog.txt"

#Create log dir if it doesn´t exists
if [ ! -d $Logfilepath ]
then
    mkdir $Logfilepath
fi

#Create new log file if it doesn't exists
if [ ! -f $Logfile ]
then
    touch $Logfile
fi

#Check for new content in Plex download directory
inotifywait -m $filepath -e create -e moved_to|
  while read dir action file; do
        Dircontent=$(ls $filepath)
        for files in $Dircontent
        do
            #Sync files to nodes  and append to log
            echo "$TimeStamp: Following file(s) will be synced: $files" | sudo tee -a $Logfile
            nginx-sync
        done
 done
