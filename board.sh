#!/bin/bash
ROOTFOLDER=$(pwd)
ACTION=$1
BOARDFOLDER=( "circuit-diagram" "code" "pcb" "bom" "kicad" "prototyping")
ACTIVEBRANCH=$(git branch --show-current)
function createBoardSkeleton {
  local boardType=$1
  local boardName=$2
  echo "Creating a new branch for your new board"
  echo "Stashing your changes"
  local HELPERFILE="${ROOTFOLDER}/create_${boardType}_${boardName}"
  touch $HELPERFILE
  git stash --include-untracked
  git checkout -b "${boardType}_${boardName}"
  if [ $? -ne 0 ]; then
    echo -e "Error: Branch can't be created it already exists.\n"
    echo -e "You might want to delete the existing banch if it does not include any changes.\n"
    echo -e "Or just take a different Boardname\n"
    echo -e "Applying stahed changes\n"
    git stash pop
    exit 13
  fi
  echo -e "Creating Folders\n"
  for folderName in "${BOARDFOLDER[@]}"
  do
    echo "${folderName} "
    mkdir -p "${ROOTFOLDER}/${folderName}/${boardType}/${boardName}"
    if [ $? -ne 0 ]; then
      echo -e "Nagot gick fel\n"
      echo -e "Error: The creation of ${folderName} for your board failed"
      echo -e "Rolling back changes, switching branch back to ${ACTIVEBRANCH} and applying stashed files"
      git reset
      git checkout -b ${ACTIVEBRANCH}
      git stash pop
      rm $HELPERFILE
      exit 12
    fi
    touch "${ROOTFOLDER}/${folderName}/${boardType}/${boardName}/.gitkeep"
    git add "${ROOTFOLDER}/${folderName}/${boardType}/${boardName}/.gitkeep"
  done
  git commit -m "adds new board skeleton for a ${boardType} ${boardName}"
  git checkout -b ${ACTIVEBRANCH}
  git stash pop
  rm $HELPERFILE
  echo -e "A new branch with the skeleton files was created for you.\n"
  echo -e "You need to switch branches to add changes.\n"
  echo -e "board.sh b ${boardType}_${boardName} \n"
  echo -e "Will do the trick for you."
}

function newBoardSkeleton {
  echo -e "Create a new board Skeleton\n"
  echo -e "Give the board a name\n"
  echo -e "Hint: <ConnectionType>-<MCU-Hardware>{(OPTIONAL)-<Specialpurpose>}\n"
  echo ">>  "
  read newBoardNameUserinput
  local newBoardName=$(echo "$newBoardNameUserinput" | sed -e 's/ /_/g')
  echo -e "The Board will be driven by:\n"
  echo -e "1) Teensy\n"
  echo -e "2) Esp32\n"
  echo -e "3) Esp8266\n"
  echo -e "4) Unknown\n"
  echo ">>  "
  read -n 1 newBoardTypeID
  case "$newBoardTypeID" in
    1) local newBoardType="teensy-based";;
    2) local newBoardType="esp32-based";;
    3) local newBoardType="esp8266-based";;
    4) local newBoardType="unknown";;
    *) echo "Error: not a valid board selected" && exit 10;;
  esac  
  for folderName in "${BOARDFOLDER[@]}"
  do
    [ -d "${ROOTFOLDER}/${folderName}/${newBoardType}/${newBoardName}" ] && echo "Board already existing at least in ${folderName}" && exit 11;
  done
  echo -e "You want to create a new ${newBoardType} board Named ${newBoardName}"
  echo -e "Accept with (y/Y) - Anything else willl abort"
  read -n 1 readytoCreate
  case "$readytoCreate" in
    y|Y) createBoardSkeleton ${newBoardType} ${newBoardName};;
    *) echo "Aborted by user" && exit 0;;
  esac
}

function switchBranch {
  echo -e "Switch Branch\n"
  local branchname="$1"
  if [ "$branchname" == "" ] 
  then
    for availableBranch in $(git branch --list)
    do
      local availableBranchName=$(echo "$availableBranch" | sed -e 's/[[:space:]]//g' | sed -e 's/\*//g')
      if [ "${availableBranchName}" != "${ACTIVEBRANCH}" ]
      then
        echo -e "Do you want to switch to ${availableBranchName}\n Yes:(y/Y) -- No (any other key)\n "
        case "$readytoCreate" in
          y|Y) local branchname=${availableBranchName} && continue;;
          *) echo -e "\n";;
        esac
      fi
    done
  fi
  if [ "$branchname" == "" ] 
  then
    echo "Stashing changes"
    git stash --include-untracked
    git checkout "$branchname"
    echo "Applying changes from stash"
    git stash pop
  fi
}

function add2gitPush {
  echo -e "Are you a collaborator of the followinf project"
  git remote -v | grep push | grep origin
  echo -e "You have the rights to push to this repo? \nYES: (y/Y) -- NO: (every other key)"
  read -n 1 pushYES
  case "$pushYES" in
    y|Y) git push origin ${ACTIVEBRANCH};;
    *) echo "Ok you need to do a git push to send your changes to a server.\n Become a collaborator or fork the project and push to your forked origin." ;;
  esac
}

function add2gitCommit {
  echo -e "What do you think is the new behaviour with your changes? (Keep short but understanable)"
  read commitMessage
  git commit -m "${commitMessage}"
  add2gitPush
}

function add2gitStageSelected {
  echo -e "The git interactive mode will be started for you\n"
  echo -e "When promt is shown type 4: add untracked\n"
  echo -e "Now type the number of the untracked file you want to add\n"
  echo -e "When all files you want to commit are selected just push Enter\n"
  echo -e "Back on the main prompt push 7: quit and this programm runs further\n"
  echo -e "Push any key to continue"
  read -n 1 anykey
  add2gitCommit
}

function add2git {
  echo -e "Add Changes to Git\n"
  if [ "$ACTIVEBRANCH" == "master" ]
  then
    echo -e "You can't change the master, please change branch first\n"
    exit 14
  fi
  echo -e "Do you want to add all your changes\n YES: (y/Y) -- NO: (every other key)"
  read -n 1 addAll
  case "$addAll" in
    y|Y) git stage -A && add2gitCommit;;
    *) add2gitStageSelected ;;
  esac
}

function showHelp {
  echo -e "Help\n"
  echo -e "n - Create a new Skeleton for a board - If you want to start a complete new board\n"
  echo -e "b - Change or create a branch - If you aren't so familiar with Git\n"
  echo -e "a - Add changes, commit and Push - If you aren't so familiar with Git\n"
  echo -e "p - Pack a boardlayout - You select an existing board and pack all relevant files togeter to one archive\n"
  echo -e "h -  This help\n"
  exit 0
}

function packBoard {
  echo -e "Create board Package\n"
  local boardNames
  for folderName in "${BOARDFOLDER[@]}"
  do
      local teensy=$(ls -d "${ROOTFOLDER}/${folderName}/teensy-based/")
      local esp32=$(ls -d "${ROOTFOLDER}/${folderName}/esp32-based/")
      local esp8266=$(ls -d "${ROOTFOLDER}/${folderName}/esp8266-based/")
      local unknown=$(ls -d "${ROOTFOLDER}/${folderName}/unknown/")
      OLDIFS="$IFS"
      IFS=$'\n'
      combined=(`for boardName in "${boardNames[@]}" "${teensy[@]}" "${esp32[@]}" "${esp8266[@]}" "${unknown[@]}"; do echo "$boardName" ; done | sort -du`)
      IFS="$OLDIFS"
      boardNames=combined
  done
  local i=0
  for boardName in "${boardNames[@]}"
  do
    echo -e "${i}) ${boardName}\n"
    i=$((i+1))
  done
  i=$((i-1))
  echo -e "\n\n"
  echo -e "Type the number of the board followed by the enter key"
  read -p 'No: 'boardId
  until [[ $boardId =~ ^[+]?[0-9]{1-5}+$ ]]
  do
    echo "Not an id of a board - Try again!"
    echo
    read -p 'No: 'boardId
  done
  [ $boardId -lt 0 ] && echo "Not an id of a board" && exit 15
  [ $boardId -gt i ] && echo "Not an id of a board" && exit 16 
  local selectedBoard=${boardNames[$boardId]}
  local packfolder="${ROOTFOLDER}/boardPacks/${selectedBoard}"
  echo "Packing Board: $selectedBoard"
  mkdir -p "${packfolder}"
  for folderName in "${BOARDFOLDER[@]}"
  do
    cp -r "${ROOTFOLDER}/${folderName}/teensy-based/${selectedBoard}/" "${packfolder}"
    cp -r "${ROOTFOLDER}/${folderName}/esp32-based/${selectedBoard}/" "${packfolder}"
    cp -r "${ROOTFOLDER}/${folderName}/esp8266-based/${selectedBoard}/" "${packfolder}"
    cp -r "${ROOTFOLDER}/${folderName}/unknown/${selectedBoard}/" "${packfolder}"
  done
  if [ -f "${packfolder}.7z" ]
  then
    rm "${packfolder}.7z"
  fi
  7z a "${packfolder}.7z" "${packfolder}/"
  if [ $? -ne 0 ]; then
    if [ "${packfolder}" != "" ]
    then 
      rm -rf "${packfolder}"
    fi
    echo "Packing files with 7zip failed"
    exit 17  
  fi
  if [ "${packfolder}" != "" ]
  then 
    rm -rf "${packfolder}"
  fi
  echo "You can find your boardPack here: boardPacks/${packfolder}.7z"
  exit 0
}

function pullBranch {
  echo -e "Pull latest changes from origin for ${ACTIVEBRANCH}\n"
  echo -e "Stashing changes\n"
  git stash --include-untracked
  git pull --rebase origin ${ACTIVEBRANCH}
  echo "Applying changes from stash"
  git stash pop
}

function showIncorrect {
  echo -e "Error: Your selection is incorrect\n"
  echo -e "board.sh help\n"
  echo -e "Will guide you\n"
  exit 1
}


case "$ACTION" in
  n|new) newBoardSkeleton;;
  b|branch) switchBranch $2;;
  a|add2git) add2git;;
  p|get|pack) packBoard;;
  u|update) pullBranch;;
  help|--help|-h) showHelp;;
  *) showIncorrect;;
esac
