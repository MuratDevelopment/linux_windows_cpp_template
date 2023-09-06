WIN32_CC=i686-w64-mingw32-g++
WIN64_CC=x86_64-w64-mingw32-g++
WIN32_AND_64_CC=mingw-w64
CC=g++

PROJECTNAME=template
VERSION=0.1

.PHONY: all win32 win64 linux clean

all: win32 win64 linux

clean:
	rm -rf bin/*

win32:
	$(WIN32_CC) src/main.cpp -o bin/$(PROJECTNAME)-$(VERSION)-win32.exe -I ./include/* -L ./lib/*

win64:
	$(WIN64_CC) src/main.cpp -o bin/$(PROJECTNAME)-$(VERSION)-win64.exe -I ./include/* -L ./lib/*

linux:
	$(CC) src/main.cpp -o bin/$(PROJECTNAME)-$(VERSION)-linux -I ./include/* -L ./lib/*
