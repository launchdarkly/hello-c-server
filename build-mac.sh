clang -target x86_64-apple-darwin21.1.0 -o hello hello.c lib/libldserverapi.a -I include -lcurl -lpthread -lpcre -lm -framework CoreFoundation -framework IOKit
