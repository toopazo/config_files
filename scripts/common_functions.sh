#!/usr/bin/env bash

preprocessing_info(){
    #clear
    echo "preprocessing_info .."
    echo "  HOSTNAME: ${HOSTNAME}"
    echo "  USER: ${USER}"
    echo "  HOME: ${HOME}"
    echo "  PWD: ${PWD}"
    echo "  SHELL: ${SHELL}"
    echo "  SESSION: ${SESSION}"
    lsb_release -a
    date
}
log_stdout_stderr(){
	LOG_FILE=/tmp/common_${USER}.log   # LOG_FILE=${BDIR}/cron_reboot.log
	# rm ${LOG_FILE}
	exec 3>&1 1>>${LOG_FILE} 2>&1
	# would send stdout and stderr output into the log file, 
	# echo "log file message"
	# but would also leave you with fd 3 connected to the console, so you can do
	# echo "console message" 1>&3
	# to write a message just to the console, or
	# echo "console and log file message" | tee /dev/fd/3
}
export_env_vars(){
    TO_PATH='${HOME}/Dropbox'
    if [ -d "${TO_PATH}" ]; then
      TO_DROPBOX=${TO_PATH}
    fi
    TO_PATH='/mnt/sda4/Dropbox'
    if [ -d "${TO_PATH}" ]; then
      TO_DROPBOX=${TO_PATH}
    fi
    export TO_DROPBOX
    printenv | grep TO_
    # cd ${TO_DROPBOX}
}