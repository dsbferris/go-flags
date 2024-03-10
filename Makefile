
default:format test crosscompile

format:
	gofmt -w -s .

test:
	go test -v ./...


crosscompile:
	./check_crosscompile.sh


.PHONY: format test