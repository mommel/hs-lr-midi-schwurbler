PYTHON := python3
# source configuration
SRCFOLDER := src
OEXT := .md
SRC_MIDFIX := base

# build auto configuration
BUILD_PARENT := $(shell pwd)
BUILD := build
SOURCES := $(wildcard $(SRCFOLDER)/*)
BASEFILES :=  $(filter  %.$(SRC_MIDFIX)$(OEXT), $(SOURCES))
NOTTRANSLATABLE :=  $(filter-out $(BASEFILES), $(SOURCES))

# executables
MKD := mkdir -p
RMD := rmdir
RM := rm -rf
CP := cp

.PHONY = help clean

.DEFAULT_GOAL = run

# The @ makes sure that the command itself isn't echoed in the terminal
help :
	@echo "---------------HELP-----------------"
	@echo "To install the preqisites for the"
	@echo "project type make install"
	@echo "To run the generator type make run"
	@echo "------------------------------------"

.PHONY: create
create :
	@echo Creating build folder
	$(shell ${MKD} ./${BUILD})

.PHONY: preqisites
preqisites : create
	$(shell $(pip3 list | grep "click" || pip3 install click --user))
	$(shell $(MKD) ./bin)
	$(shell curl -fsSL https://raw.githubusercontent.com/ryul1206/multilingual-markdown/master/multilang_md.py > bin/multilang_md.py)

run : clean preqisites translate

translate :
	@echo Copying files not to be translated into build folder
	@cp $(NOTTRANSLATABLE) ./$(BUILD)
	@cp $(BASEFILES) ./$(BUILD)
	@cd ${BUILD} && ${PYTHON} ../bin/multilang_md.py -r && rm *.${SRC_MIDFIX}${OEXT}

clean ::
	@echo "Cleanup build folder"
	$(shell ${MKD} ./${BUILD}) 
ifndef BUILD
	@echo Something is wrong wih your buildfolder
	@exit 23
endif
	$(shell ${RM} ./${BUILD})
	@echo buildfolder totally removed