C_CLIENT_PATH = c-server-sdk
C_CLIENT_REPO = https://github.com/launchdarkly/c-server-sdk
CC = gcc
CFLAGS = -g -Wall -I$(C_CLIENT_PATH)/include
LFLAGS = $(C_CLIENT_PATH)/build/libldserverapi.a -lcurl -lpthread -lm -lpcre

TARGET = hello

all: $(TARGET)

clean:
	rm -rf $(TARGET) $(C_CLIENT_PATH)

$(TARGET): $(TARGET).c $(C_CLIENT_PATH)/build/libldserverapi.a
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c $(LFLAGS)

$(C_CLIENT_PATH)/build/libldserverapi.a: $(C_CLIENT_PATH)
	cd $(C_CLIENT_PATH) && \
		mkdir -p build && \
		cd build && \
		cmake .. && \
		make

$(C_CLIENT_PATH):
	git clone $(C_CLIENT_REPO) $(C_CLIENT_PATH)
