PROJECT 					= Schwurbler
BUILDDIR 					= .
SHELL        			= /bin/bash
CURRENT_DIRECTORY = $(shell pwd)

WORKSPACE="../"
WODKSPACEFILE="code-workspace"
WORKSPACEFILE_SRC="$(WODKSPACEFILE).src"
WORKSPACEFILE_BUILD_TARGET="${PROJECT}.$@"

.DEFAULT_GOAL := default

default:;
	@echo " build - will make a complete install ..."
	@echo " clean - will make a complete uninstall ... "
	@echo " node_modules - installs only node delivered runner ... "
	@echo " pip_modules - installs only pip delivered runner ... "
	@echo " code-workspace - will try to setup the right runner into your workspace file ... "
	@echo " build and code-workspace won't overwrite a workspace file in total but creates when not existing"

.PHONY: code-workspace
code-workspace:
	$(shell [ ! -f "$(WORKSPACE)$(WORKSPACEFILE_BUILD_TARGET)" ] && echo "Building $@" && cp $(WORKSPACEFILE_SRC) $(WORKSPACE)$(WORKSPACEFILE_BUILD_TARGET))
	$(shell ./setmeup.sh 'code-workspace' 2>&1)

.PHONY: node-modules
node-modules: ;@echo "Installing runner delivered by node-modules ...."; \
	$(shell $(CURRENT_DIRECTORY)/setmeup.sh 'node-modules')

.PHONY: pip-modules
pip-modules: ;@echo "Installing runner delivered by pip-modules ...."; \
	$(shell ./setmeup.sh 'pip-modules')

.PHONY: build
build: pip-modules node-modules code-workspace ;
	@echo "Setup Process done"

.PHONY: clean
clean : ;@echo "Removing Libraries....."; \
	rm -rf ./node_modules
	rm -rf ./pip_modules
