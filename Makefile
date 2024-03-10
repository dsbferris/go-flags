format:
	gofmt -w -s .

check-cross-compile:
	./check_crosscompile.sh

test:
	go test -v ./...

.PHONY: format test