.PHONY: install
install:
	@go get -d \
		github.com/dvyukov/go-fuzz/go-fuzz \
		github.com/dvyukov/go-fuzz/go-fuzz-build

.PHONY: build
build:
	cd fuzz && go-fuzz-build && cd ../

.PHONY: fuzz
fuzz:
	go-fuzz -bin=./fuzz/json-fuzz.zip -workdir=workdir
