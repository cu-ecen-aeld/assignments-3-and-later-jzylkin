
CC = $(CROSS_COMPILER)gcc

CFLAGS = -Wall -g

# Source files
SRC = writer.c
OBJ = $(SRC:.c=.o)
EXEC = writer

# Targets
all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(EXEC)


