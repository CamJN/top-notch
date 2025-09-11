PREFIX ?= /usr/local
EXE_PATH:=$(shell swift build --configuration release --show-bin-path)
NAME:=top-notch

.PHONY: build install run

$(EXE_PATH)/$(NAME): Sources/main.swift
	swift build $(OTHER_SWIFT_FLAGS) --configuration release

build: $(EXE_PATH)/$(NAME)

$(PREFIX)/bin/$(NAME): $(EXE_PATH)/$(NAME)
	install -C -s -o root -g wheel "$(EXE_PATH)/$(NAME)" "$(PREFIX)/bin/$(NAME)"

install: $(PREFIX)/bin/$(NAME)

run:
	swift run
