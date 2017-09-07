#!/bin/bash
echo "Tipe ticket type[t/p]"
read typ
echo "make new ticket?[y/n]"
read make

if [ $make = 'y' ]; then
		echo "how many tickets?"
		read how
		
		for ((i=1; i <= $how; i++)); do
				touch $typ$i.txt
		done

		echo $how > $typ.txt
		
elif [ $make = 'n' ]; then
		echo "add?[y/n]"
		read add

		if [ $add = 'y' ]; then
				echo "how many tikets?"
				read how
				sum=$(cat $typ.txt)
				echo $sum
				max=$((sum + how))

					for ((i=$sum; i <= $max; i++)); do
						touch $typ$i.txt
					done

				echo $max > $typ.txt
		fi
fi
