all: ios macos
ios:
	$CC=$GOROOT/misc/ios/clangwrap.sh $GOARCH=arm go build -buildmode=c-archive -o echo_ios.a echo.go
macos:
	$CC=clang $GOARCH=amd64 go build -buildmode=c-archive -o echo_macos.a echo.go
clean:
	rm echo_ios.a echo_ios.h echo_macos.a echo_macos.h
