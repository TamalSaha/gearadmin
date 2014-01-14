SHELL := /bin/bash
PKG = github.com/Clever/gearadmin
SUBPKGS =
PKGS = $(PKG) $(SUBPKGS)

.PHONY: test $(PKGS)

test: $(PKG)

$(PKG):
	golint $(GOPATH)/src/$@*/**.go
	go get -d -t $@
ifeq ($(COVERAGE),1)
	go test -cover -coverprofile=$(GOPATH)/src/$@/c.out $@ -test.v
	go tool cover -html=$(GOPATH)/src/$@/c.out
else
	go test $@ -test.v
endif