#!/usr/bin/env make -f
all: loop.o0 loop.o1 loop.o2 loop.o3 loop.ofast loop
	time ./loop.o0
	time ./loop.o1
	time ./loop.o2
	time ./loop.o3
	time ./loop.ofast
	time ./loop
	time python loop.py

loop.o%: loop.c
	clang -O$* loop.c -o $@

loop: loop.go
	go build loop.go
