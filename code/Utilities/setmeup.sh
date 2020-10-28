#!/bin/bash
function node-modules() {
  yarn --version >/dev/null
  if [ $? -ne 0 ]; then
    curl -o- -L https://yarnpkg.com/install.sh | bash
  fi
  yarn 2>&1
  exit 0;
}

function pip-modules() {
  cat package_pip.src | xargs -n 1 -L 1 -I{} pip install {} -t pip_modules/. --isolated --prefer-binary 2>&1
  echo "PIP DONE"
  exit 0;
}

function code-workspace() {
  export PATH=$PATH:$PWD/pip_modules/bin:$PWD/node_modules/.bin

  WORKSPACEFILE='../Schwurbler.code-workspace'

  if [ ! -f $WORKSPACEFILE ]; then
    echo "Error code-workspace File is not existing"
    echo "Please run make build first"
    echo "Stopping now"
    exit 34;
  elif [ "$(cat $WORKSPACEFILE )" == "" ]; then
    echo "Error code-workspace File is an empty file"
    echo "Will delete file now - Please run make build first"
    echo "Stopping now"
    rm $WORKSPACEFILE
    exit 35;
  fi

  FAILED=""

  CPPLINT=$(which cpplint)
  if [ $? -ne 0 ]; then
    FAILED += "CPPLINT "
  fi
  DOC8=$(which doc8)
  if [ $? -ne 0 ]; then
    FAILED += "DOC8 "
  fi
  CLANGFORMAT=$(which clang-format)
  if [ $? -ne 0 ]; then
    FAILED += "CLANGFORMAT "
  fi

  export PATH=$PATH:$PWD/node_modules/.bin:$PWD/pip_modules/.bin

  for runner in $FAILED
  do
    case $runner in
      'CPPLINT')
        CPPLINT=$(which cpplint);;
      'DOC8')
        DOC8=$(which doc8);;
      'CLANGFORMAT')
        CLANGFORMAT=$(which clang-format);;
    esac
  done

  echo "CPPLINT found at $CPPLINT"
  echo "CLANGFORMAT found at $CLANGFORMAT"
  echo "DOC8 found at $DOC8"
  cat $WORKSPACEFILE >${WORKSPACEFILE}.bak


  replace_value 'cpplint.cpplintPath' "$CPPLINT"
  replace_value 'clang-format.executable' "$CLANGFORMAT"
  replace_value 'restructuredtext.linter.executablePath' "$DOC8"
  cat $WORKSPACEFILE | grep cpplint.cpplintPath
  cat $WORKSPACEFILE | grep clang-format.executabl
  exit 0;
}


function replace_value() {
  thekey=$(echo "$1" | sed 's/\./\./g')
  newvalue=$(echo "$2" | sed 's/\./\\\./g' | sed 's/\//\\\//g')
  cat $WORKSPACEFILE | sed "s/\"$thekey\" : \".*\"/\"$1\" : \"${newvalue}\"/" >$WORKSPACEFILE._2
  cat ${WORKSPACEFILE}._2 >$WORKSPACEFILE
  rm $WORKSPACEFILE._2
}

case $1 in
  'pip-modules')
      pip-modules;;
  'node-modules')
      node-modules;;
  'code-workspace')
      code-workspace;;
  *) echo "Not valid"
esac
