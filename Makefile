SHELL += -eu

BLUE	:= \033[0;34m
GREEN	:= \033[0;32m
RED   := \033[0;31m
NC    := \033[0m

init:
	${GOPATH}/bin/dep init -v

build:
	${GOPATH}/bin/dep ensure
	env GOARCH=amd64 GOOS=linux go build -o ./bin/stats ./src/go/stats

clean:
	rm -rf bin/* 