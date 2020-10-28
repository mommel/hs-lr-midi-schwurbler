# Signifies our desired python version
# Makefile macros (or variables) are defined a little bit differently than traditional bash, keep in mind that in the Makefile there's top-level Makefile-only syntax, and everything else is bash script syntax.
PYTHON := python3
OUT_DIR := build
SOURCES := src
OEXT := .md
SRC_MIDFIX := base

BASEFILES := $(shell find ${SOURCES}/  -maxdepth 1 -type f -regex ".*\.${SRC_MIDFIX}\.md")
DIRECTACCESSFILES := $(shell find ${SOURCES}/ -maxdepth 1 -type f -regex "[^\.]*\.md")

# executables
MKD := mkdir -p
RMD := rmdir
RM := rm -f
CP := cp
# .PHONY defines parts of the makefile that are not dependant on any specific file
# This is most often used to store functions
.PHONY = help install run clean

.DEFAULT_GOAL = run

# The @ makes sure that the command itself isn't echoed in the terminal
help:
	@echo "---------------HELP-----------------"
	@echo "To install the preqisites for the"
	@echo "project type make install"
	@echo "To run the generator type make run"
	@echo "------------------------------------"

# This generates the desired project file structure
# A very important thing to note is that macros (or makefile variables) are referenced in the target's code with a single dollar sign ${}, but all script variables are referenced with two dollar signs $${}
install:
	pip install -r requirements.txt
	curl -fsSL https://raw.githubusercontent.com/ryul1206/multilingual-markdown/master/multilang_md.py > .multilang_md.py
# The ${} notation is specific to the make syntax and is very similar to bash's $() 
# This function uses pytest to test our source files

run: clean
	$(shell ${MD} ./${OUT_DIR})
	@cp ${DIRECTACCESSFILES} ./${OUT_DIR}
	cd ./${OUT_DIR}
	$(${PYTHON} ../multilang_md.py `echo "${BASEFILES}" | sed 's/ /\n/g'`)
	cd ..;	

clean:
	${RM} ${OUT_DIR}/*${OEXT}