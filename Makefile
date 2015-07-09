# CC=gcc
# CFLAGS=-g -c -Wall

# all: threadpool

# threadpool: threadpool.o main.o

# 	$(CC) threadpool.o main.o -lpthread -o threadpool

# threadpool.o: 

# main.o:

# clean:




CC			= gcc
LDFLAGS		= -pthread
TARGET		= threadpool
SRC += main.c
SRC += threadpool.c


all:$(TARGET)

$(TARGET):$(SRC)
	$(CC) $(LDFLAGS) -o $@ $(SRC)
	# cp $(TARGET) /tftpboot/
	# cp scripts/udpiptables.sh /tftpboot/

clean:
	rm -f $(EXEC) *.elf *.gdb *.o 
