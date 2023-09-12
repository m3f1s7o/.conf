#! /bin/bash

# get sinks and running sinks
sinks=$(pactl list short sinks)
running=$(grep "$(pactl get-default-sink)" <<< $sinks | cut -d "a" -f 1)
# get only identifyers
readarray -t ids <<< $(cut -d "a" -f 1 <<< $sinks)

# switch to next sink
for sink in ${!ids[@]}; do
	# if it's the last sink in the array, switch to the first
	if [[ ${ids[$sink]} -eq $running ]]; then
		if [[ $(( $sink +1 )) -eq ${#ids[@]} ]]; then
			pactl set-default-sink ${ids[0]}
			break
		fi
		# otherwise switch to the next 
		pactl set-default-sink ${ids[(($sink + 1))]}
		break
	fi
done

notify-send "Current audio output" "$(pactl info | grep "Sink" | cut -d "." -f 4)"
