#!/bin/bash

# Stolen from https://jakemccrary.com/blog/2015/05/03/put-the-last-commands-run-time-in-your-bash-prompt
# and customised to fit in MOON

## Variable CMD_DURATION_COL controls the color of this module

function timer_start {
  timer=${timer:-$SECONDS}
}

function timer_stop {
  timer_show=$(($SECONDS - $timer))
  unset timer
}

trap 'timer_start' DEBUG

if [ "$PROMPT_COMMAND" == "" ]; then
  PROMPT_COMMAND="timer_stop"
else
  PROMPT_COMMAND="$PROMPT_COMMAND; timer_stop"
fi

cmd_duration () {
	echo "\e[${CMD_DURATION_COL}mtook \${timer_show}s\e[0m"
}

