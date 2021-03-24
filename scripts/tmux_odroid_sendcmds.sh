#!/bin/bash

# import external functions
# source common_functions.sh

tmux_send_commands(){
    echo "tmux_send_commands .."

#    session=whatever
#    window=${session}:0
#    pane=${window}.4
#    tmux send-keys -t "$pane" 'some -new command' Enter
#    tmux select-pane -t "$pane"
#    tmux select-window -t "$window"
#    tmux attach-session -t "$session"

    # C-z is to interrupt running processes in the target pane
    # tmux send-keys -t "${pane}" C-z 'sleep 4' Enter

    # scp tmux_odroid_session.sh avia@10.42.0.13:/home/avia/
    # ssh avia@192.168.1.113

    pane=0
	tmux send-keys -t "${pane}" 'sl' Enter
	#tmux send-keys -t "${pane}" 'cd' Enter
	tmux send-keys -t "${pane}" 'cat /home/avia/.bashrc' Enter

	pane=1
	tmux send-keys -t "${pane}" 'sl' Enter
	tmux send-keys -t "${pane}" 'roscore' Enter

    pane=2
	tmux send-keys -t "${pane}" 'sleep 4' Enter
	tmux send-keys -t "${pane}" 'sl' Enter
    tmux send-keys -t "${pane}" 'cd ros_ws/src/control/' Enter
    tmux send-keys -t "${pane}" 'rostopic echo /joy' Enter

    pane=3
	tmux send-keys -t "${pane}" 'sleep 4' Enter
	tmux send-keys -t "${pane}" 'sl' Enter
    tmux send-keys -t "${pane}" 'cd ros_ws/' Enter
    tmux send-keys -t "${pane}" 'source devel/setup.bash' Enter
    tmux send-keys -t "${pane}" 'cd ..' Enter
    tmux send-keys -t "${pane}" 'roslaunch outdoor.launch' Enter

    pane=4
	tmux send-keys -t "${pane}" 'sleep 4' Enter
	tmux send-keys -t "${pane}" 'sl' Enter
    tmux send-keys -t "${pane}" 'cd ros_ws/' Enter
    tmux send-keys -t "${pane}" 'source devel/setup.bash' Enter
    tmux send-keys -t "${pane}" 'cd src/cargo_control/launch' Enter
    tmux send-keys -t "${pane}" 'roslaunch aug_states.launch' Enter

    pane=5
	tmux send-keys -t "${pane}" 'sleep 4' Enter
	tmux send-keys -t "${pane}" 'sl' Enter
	tmux send-keys -t "${pane}" 'vim outdoor_record.launch' Enter
}

#####################
# start of the script
#####################
tmux -V

tmux_send_commands