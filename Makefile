
# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# The main clean target
clean:
	rm -f hello

#=============================================================================
# Target rules for targets named hello

# Build rule for target.
hello: hello.c
	gcc -o $@ $<

test: hello
	./hello

all: hello test
