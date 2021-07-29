#!/bin/bash

# import external functions
# source common_functions.sh

tmux_create_panes(){
    echo "tmux_create_panes .."
    BASE_DIR=$1
    NPANES=$2

    # pane 0
	tmux new-session -s ${TMUX_SESSION} -n script -d -c ${BASE_DIR}

	# pane 1
	tmux split-window -h -c ${BASE_DIR}

	# pane 2
	tmux select-pane -L
	tmux split-window -v -c ${BASE_DIR}

	# pane 3
	tmux split-window -v -c ${BASE_DIR}

    if [ "${NPANES}" == 4 ]
    then
        # make all panels the same size
	    tmux select-layout tiled
        return
    fi

	# pane 4
	tmux select-pane -R
	tmux split-window -v -c ${BASE_DIR}

	# pane 5
	tmux split-window -v -c ${BASE_DIR}

    if [ "${NPANES}" == 6 ]
    then
    	# make all panels the same size
	    tmux select-layout tiled
        return
    fi

    if [ "${NPANES}" == 9 ]
    then
        # make all panels the same size
	    tmux select-layout tiled

		# pane 6
		tmux select-pane -L
		tmux split-window -h -c ${BASE_DIR}

		# pane 7
		tmux select-pane -R
		tmux split-window -h -c ${BASE_DIR}
		# pane 8
		tmux select-pane -U
		tmux select-pane -U
		tmux select-pane -L
		tmux split-window -h -c ${BASE_DIR}

		# pane 9
		tmux select-pane -R
		tmux split-window -h -c ${BASE_DIR}

		return
	fi
}

tmux_attach_to_session(){
    echo "tmux_attach_to_session .."
    tmux attach -t $1
}

tmux_close_session(){
    echo "tmux_close_session .."
    SESSION=$1
    tmux kill-session -t ${SESSION}
}

tmux_find_session(){
    echo "tmux_find_session .."
    SESSION=$1
    RES=$2
    TMUX_LS=$(tmux ls |grep ${SESSION})
    # echo "tmux ls |grep ${SESSION} returns ${TMUX_LS}"
    # tmux has-session -t $SESSION &> /dev/null

    echo "$TMUX_LS" | grep -q "${TMUX_SESSION}"
    if echo "$TMUX_LS" | grep -q "${TMUX_SESSION}"
    then
        echo "    There is a session already named ${SESSION}"
        RES=1
    else
        # if no previous, create new session
        echo "    No previous session named ${SESSION}"
        RES=0
    fi
}

parse_user_args(){
    echo "parse_user_args .."
    # user args
    UARG_ARG1=$1
    UARG_ARG2=$2
    UARG_ARG3=$3
    UARG_ARG4=$4

    # default settings
    UARG_EXIT="n"
    UARG_BASE_DIR="."
    UARG_NPANES=0

    # parse user input
    # -e option
    if [ "${UARG_ARG1}" == "-e" ]; then
        UARG_EXIT="y"
    fi
    # -d option
    if [ "${UARG_ARG1}" == "-d" ]; then
        UARG_BASE_DIR=${UARG_ARG2}
    fi
    # -p option
    if [ "${UARG_ARG1}" == "-p" ]; then
        UARG_NPANES=${UARG_ARG2}
    fi
    if [ "${UARG_ARG3}" == "-p" ]; then
        UARG_NPANES=${UARG_ARG4}
    fi

    UARG_BASE_DIR=$(readlink -f ${UARG_BASE_DIR})

    # return UARG_EXIT UARG_BASE_DIR
}

#####################
# start of the script
#####################
tmux -V

# user inputs
parse_user_args $1 $2 $3 $4
echo "    -e = UARG_EXIT = ${UARG_EXIT}"
echo "    -d = UARG_BASE_DIR = ${UARG_BASE_DIR}"
echo "    -p = UARG_NPANES = ${UARG_NPANES}"

# overwrite user input
#UARG_BASE_DIR="/home/avia/robots/multi_lift/branches/sim_outdoor/"
UARG_BASE_DIR="/home/avia/robots/octocopter/sim_outdoor/"

# set other variables
TMUX_SESSION="tmuxs1"

# go to base directory
cd ${UARG_BASE_DIR}
CURRENT_DIR=$(pwd)

# close session and exit if correct argument
if [ "${UARG_EXIT}" == "y" ]
then
    tmux_close_session ${TMUX_SESSION}
    exit
fi

# check if directories exist
if [ ! -d "${UARG_BASE_DIR}" ]
then
	echo "${UARG_BASE_DIR} does not exist"
	exit
fi

# check if a tmux session already exist
RES=0
tmux_find_session ${TMUX_SESSION} RES

# decide accordingly
if [ "${RES}" == 1 ]
then
	tmux_attach_to_session ${TMUX_SESSION}
else
    if [ "${UARG_NPANES}" == 4 ] || \
			[ "${UARG_NPANES}" == 6 ] || \
			[ "${UARG_NPANES}" == 9 ]
    then
        tmux_create_panes ${UARG_BASE_DIR} ${UARG_NPANES}
        tmux_attach_to_session ${TMUX_SESSION}
    fi

    echo "Try again, available panes are 4, 6, and 9 .."
fi

