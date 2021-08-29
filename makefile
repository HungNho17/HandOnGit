#==============================
# Practicing makefile syntaxs.
#==============================

include makefileResources.mk
#==============================================================

output=./build
OBJ_FILES := $(patsubst %.c, %.o, $(SRC))
#==============================================================

build: $(OBJ_FILES)
	gcc -o $(output)/main $(output)/$(notdir $<)

#==============================================================

%.o: %.c
	if [ ! -d $(output) ]; then mkdir -p $(output); fi
	gcc -c $< -o $(output)/$(notdir $@)
#==============================================================

.PHONY: clean
clean:
	rm -rf ./build/* ./**/*.o
