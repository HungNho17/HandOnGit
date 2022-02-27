#==============================
# Practicing makefile syntaxs.
#==============================
include makefileResources.mk

#==============================================================
output=./build
OBJ_FILES := $(patsubst %.c, %.o, $(SRC))

#==============================================================
.PHONY: build
build: $(OBJ_FILES)
	gcc -g -o $(output)/main $(output)/$(notdir $<)

#==============================================================
%.o: %.c
	if [ ! -d $(output) ]; then mkdir -p $(output); fi
	gcc -g -c $< -o $(output)/$(notdir $@)

#==============================================================
.PHONY: clean
clean:
	rm -rf $(output)/* ./**/*.o


