clang -target x86_64-apple-darwin21.1.0 -o hello hello.c -L"./lib/" -I include -lcurl -lpthread -lpcre -lm -lldserverapi -framework CoreFoundation -framework IOKit
