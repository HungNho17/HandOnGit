#==============================
# Practicing makefile syntaxs.
#==============================
include makefileResources.mk

# CC = gcc
CC = g++

#==============================================================
output=./build
# OBJ_FILES = $(patsubst %.c, %.o, $(SRC))
OBJ_FILES = $(patsubst %.cpp, %.o, $(SRC_CPP))

#==============================================================
.PHONY: build
build: $(OBJ_FILES)
# $(CC) -g -o $(output)/main $(output)/$(notdir $<)
	$(CC) -g -o $(output)/main $(output)/$(notdir $<)

#==============================================================
# %.o: %.c
%.o: %.cpp
	if [ ! -d $(output) ]; then mkdir -p $(output); fi
# $(CC) -g -c $< -o $(output)/$(notdir $@)
	$(CC) -g -c $< -o $(output)/$(notdir $@) -DTEST

#==============================================================
.PHONY: clean
clean:
	rm -rf $(output)/* ./**/*.o


