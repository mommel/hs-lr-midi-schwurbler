# Utilities

It's harldy recommended to use plugins for code quality and to get the system run.

# Software needed before starting

- VS Code
- yarn
- doxygen
- python 3

# Setup

Run the following commands on your cli directly in Utilities

---

    ./make install

---

    * Yarn installs some nodemodules we need
    * pip installs some python scripts we need

# Remove Runner

---

    ./make clean

---

    INFO: All installed scripts with those two commands will be installed into that folder so that you can get easily rid of them. Just delete _node_modules_ and _pip_modules_ in Utilities - That's it

### VS Code Plugins

     The workspace asks you to install
        * platformio.platformio-ide - It's the main part between you and the development
        * ms-vscode.cpptools - A nice helper for the code
        * ms-vscode.cmake-tools The documentation is driven cmake
        * cschlosser.doxdocgen - Helps to write the needed comments beeing transformed into the docs
        * sbenp.prettier-vscode Used to format the not c stuff
        * lextudio.restructuredtext - It helps to get the rst files done right
        * xaver.clang-format The vscode end of the cpp formatter

### Worker functions running on your System

#### Code formater

clang-format

    Formats your code to be better readable
    The node module is located in Utilities > node-modules >
    clang-format > bin

cpplint
Will shout at you for leaks, dont's , weak code and even for formating

#### CPP Linting

        * clang
        * cpplint

#### Docu Generator

_Breath and Exhale are the translator between doxygen and Sphinx_

    * docutils
    * breathe
    * exhale
    * Sphinx
    * sphinx-*
    * sphinxcontrib-*

#### The rest not announced stuff comming with the install

    Dependencies

## Run Stop Return

#### Generate the Docu

    Run the cmake file and wait

#### Development

    Just use VS Code and be happy
