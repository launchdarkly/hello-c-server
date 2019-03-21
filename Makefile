C_CLIENT_PATH = c-client-server-side
C_CLIENT_REPO = https://github.com/launchdarkly/c-client-server-side
CC = gcc
CFLAGS = -g -Wall -I$(C_CLIENT_PATH)/include
LFLAGS = $(C_CLIENT_PATH)/build/libsdk.a -lcurl -lpthread -lm -lgmp -lpcre

TARGET = hello

all: $(TARGET)

clean:
	rm -rf $(TARGET) $(C_CLIENT_PATH)

$(TARGET): $(TARGET).c $(C_CLIENT_PATH)/build/libldserverapi.a
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c $(LFLAGS)

$(C_CLIENT_PATH)/build/libsdk.a: $(C_CLIENT_PATH)
	cd $(C_CLIENT_PATH) && \
		mkdir -p build && \
		cd build && \
		cmake .. && \
		make

$(C_CLIENT_PATH):
	git clone $(C_CLIENT_REPO) $(C_CLIENT_PATH)
