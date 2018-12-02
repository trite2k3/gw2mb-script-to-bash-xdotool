#!/bin/bash

> output.txt

while read -r line; do
	if [[ $line == *"Numpad1 up"* ]]; then
		echo $line | sed 's/SendInput {Numpad1 up/xdotool keyup 1/g' >> output.txt
	elif [[ $line == *"Numpad2 up"* ]]; then
		echo $line | sed 's/SendInput {Numpad2 up/xdotool keyup 2/g' >> output.txt
	elif [[ $line == *"Numpad3 up"* ]]; then
		echo $line | sed 's/SendInput {Numpad3 up/xdotool keyup 3/g' >> output.txt
	elif [[ $line == *"Numpad4 up"* ]]; then
		echo $line | sed 's/SendInput {Numpad4 up/xdotool keyup 4/g' >> output.txt
	elif [[ $line == *"Numpad5 up"* ]]; then
		echo $line | sed 's/SendInput {Numpad5 up/xdotool keyup 5/g' >> output.txt
	elif [[ $line == *"Numpad6 up"* ]]; then
		echo $line | sed 's/SendInput {Numpad6 up/xdotool keyup 6/g' >> output.txt
	elif [[ $line == *"Numpad7 up"* ]]; then
		echo $line | sed 's/SendInput {Numpad7 up/xdotool keyup 7/g' >> output.txt
	elif [[ $line == *"Numpad8 up"* ]]; then
		echo $line | sed 's/SendInput {Numpad8 up/xdotool keyup 8/g' >> output.txt
        elif [[ $line == *"Numpad1 down"* ]]; then
                echo $line | sed 's/SendInput {Numpad1 down/xdotool keydown 1/g' >> output.txt
        elif [[ $line == *"Numpad2 down"* ]]; then
                echo $line | sed 's/SendInput {Numpad2 down/xdotool keydown 2/g' >> output.txt
        elif [[ $line == *"Numpad3 down"* ]]; then
                echo $line | sed 's/SendInput {Numpad3 down/xdotool keydown 3/g' >> output.txt
        elif [[ $line == *"Numpad4 down"* ]]; then
                echo $line | sed 's/SendInput {Numpad4 down/xdotool keydown 4/g' >> output.txt
        elif [[ $line == *"Numpad5 down"* ]]; then
                echo $line | sed 's/SendInput {Numpad5 down/xdotool keydown 5/g' >> output.txt
        elif [[ $line == *"Numpad6 down"* ]]; then
                echo $line | sed 's/SendInput {Numpad6 down/xdotool keydown 6/g' >> output.txt
        elif [[ $line == *"Numpad7 down"* ]]; then
                echo $line | sed 's/SendInput {Numpad7 down/xdotool keydown 7/g' >> output.txt
        elif [[ $line == *"Numpad8 down"* ]]; then
                echo $line | sed 's/SendInput {Numpad8 down/xdotool keydown 8/g' >> output.txt
	elif [[ $line == *"Sleep, 1"[0-9][0-9][0-9]""* ]]; then
		echo $line | sed 's/Sleep, 1/sleep 1./' >> output.txt
	elif [[ $line == *"Sleep, 2"[0-9][0-9][0-9]""* ]]; then
		echo $line | sed 's/Sleep, 2/sleep 2./g' >> output.txt
        elif [[ $line == *"Sleep, 3"[0-9][0-9][0-9]""* ]]; then
                echo $line | sed 's/Sleep, 3/sleep 3./g' >> output.txt
        elif [[ $line == *"Sleep, 4"[0-9][0-9][0-9]""* ]]; then
                echo $line | sed 's/Sleep, 4/sleep 4./g' >> output.txt
        elif [[ $line == *"Sleep, 5"[0-9][0-9][0-9]""* ]]; then
                echo $line | sed 's/Sleep, 5/sleep 5./g' >> output.txt
        elif [[ $line == *"Sleep, 6"[0-9][0-9][0-9]o""* ]]; then
                echo $line | sed 's/Sleep, 6/sleep 6./g' >> output.txt
        elif [[ $line == *"Sleep, 7"[0-9][0-9][0-9]""* ]]; then
                echo $line | sed 's/Sleep, 7/sleep 7./g' >> output.txt
        elif [[ $line == *"Sleep, 8"[0-9][0-9][0-9]""* ]]; then
                echo $line | sed 's/Sleep, 8/sleep 8./g' >> output.txt
        elif [[ $line == *"Sleep, 9"[0-9][0-9][0-9]""* ]]; then
                echo $line | sed 's/Sleep, 9/sleep 9./g' >> output.txt
        elif [[ $line == *"Sleep, 0"[0-9][0-9][0-9]""* ]]; then
                echo $line | sed 's/Sleep, 0/sleep 0./g' >> output.txt
	elif [[ $line == *"Sleep, "[0-9][0-9][0-9]""* ]]; then
		echo $line | sed 's/Sleep, /sleep 0./g' >> output.txt
        elif [[ $line == *"Sleep, "[0-9][0-9]""* ]]; then
                echo $line | sed 's/Sleep, /sleep 0.0/g' >> output.txt
        elif [[ $line == *"Sleep, "[0-9]""* ]]; then
                echo $line | sed 's/Sleep, /sleep 0.00/g' >> output.txt
	elif [[ $line == *"Numpad0"* ]]; then
		echo $line | sed 's/SendInput {Numpad0/xdotool keydown 9/g' >> output.txt
		echo "sleep 0.005" >> output.txt
		echo "xdotool keyup 9" >> output.txt
        elif [[ $line == *"Numpad9"* ]]; then
                echo $line | sed 's/SendInput {Numpad9/xdotool keydown 0/g' >> output.txt
		echo "sleep 0.005" >> output.txt
		echo "xdotool keyup 0" >> output.txt
	else
		echo $line >> output.txt
		echo "Uncaught exception"
		echo $line
	fi
done < convert.txt

sed 's/}//g' output.txt > result.txt
mv result.txt output.txt
