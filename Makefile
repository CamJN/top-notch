PREFIX ?= /usr/local
EXE_PATH:=$(shell swift build --configuration release --show-bin-path)

.PHONY: build install run

$(EXE_PATH)/top-notch:
	swift build --configuration release

build: $(EXE_PATH)/top-notch

$(PREFIX)/bin/top-notch: $(EXE_PATH)/top-notch
	install -C -s -o root -g wheel "$(EXE_PATH)/top-notch" "$(PREFIX)/bin/top-notch"

install: $(PREFIX)/bin/top-notch

run: $(PREFIX)/bin/top-notch
	top-notch
