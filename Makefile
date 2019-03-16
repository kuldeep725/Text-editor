filename = *.c
output   = kilo_serial.out
CC	     = gcc
FLAGS    = -Wall -Wextra -pedantic -std=c99 -pthread
args	 = input.txt 3			#to set the default value of arguments
compile  = $(CC) $< -o $@ $(FLAGS)

all : $(output)

kilo_serial.out 			: kilo_serial.c
					  	${compile}

kilo_parallel.out			: kilo_parallel.c
						${compile}

parallel 				: kilo_parallel.out
						./kilo_parallel.out ${args}

serial 					: kilo_serial.out
						./kilo_serial.out ${args}

clean 				: 
						rm *.out