## gearadmin

Go bindings to the [gearman admin protocol](http://gearman.info/protocol/text.html).

## Why

If you want to write programs that check the status of gearman itself, you need to interact with the admin protocol.

## Documentation

[![GoDoc](https://godoc.org/github.com/Clever/gearadmin?status.png)](https://godoc.org/github.com/Clever/gearadmin).

## Tests

gearadmin is built and tested against Go 1.2.
Ensure this is the version of Go you're running with `go version`.
Make sure your GOPATH is set, e.g. `export GOPATH=~/go`.
The tests run `golint` automatically, so install that with `go get github.com/golang/lint/golint`.
Ensure that GOPATH/bin is in your PATH so that you can run `golint`: `export PATH=$PATH:$GOPATH/bin`.
Clone the repository to a location outside your GOPATH, and symlink it to `$GOPATH/src/github.com/Clever/gearadmin`.
If you have [gvm](https://github.com/moovweb/gvm) installed, you can make this symlink by running the following from the root of where you have cloned the repository: `gvm linkthis github.com/Clever/gearadmin`.
The reason for making this symlink is that the Makefile runs commands by specifying the full package name, e.g. `go test github.com/Clever/gearadmin`.
Running `go ...` commands specifying the full package name eliminates a lot of the complexity of running these tools specifying a relative path.

If you have done all of the above, then you should be able to run

```
make
```

If you'd like to see a code coverage report, run

```
COVERAGE=1 make
```
