SHELL := /bin/bash

.PHONY: all
all: hello otel

.PHONY: hello
hello:
	cd hello && go build -ldflags="-w" -o main.exe && du -h main.exe && go tool objdump -S main.exe > main.objdump

.PHONY: otel
otel:
	cd otel && go build -ldflags="-w" -o main.exe && du -h main.exe && go tool objdump -S main.exe > main.objdump
