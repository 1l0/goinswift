all: ios macos
macos:
	$CC=clang $GOOS=darwin $GOARCH=amd64 go build -buildmode=c-archive -o echo_macos.a echo.go
	mv echo_macos.h echo.h
linux:
	$CC=clang $GOOS=linux $GOARCH=amd64 go build -buildmode=c-archive -o echo_linux.a echo.go
	mv echo_linux.h echo.h
windows:
	$CC=clang $GOOS=windows $GOARCH=amd64 go build -buildmode=c-archive -o echo_windows.a echo.go
	mv echo_windows.h echo.h
ios:
	$CC=$GOROOT/misc/ios/clangwrap.sh $GOOS=darwin $GOARCH=arm go build -buildmode=c-archive -o echo_ios.a echo.go
	mv echo_ios.h echo.h
android:
	$CC=gcc $GOOS=linux $GOARCH=arm go build -buildmode=c-archive -o echo_android.a echo.go
	mv echo_android.a echo.h

clean:
	rm echo_ios.a echo_macos.a echo.h
