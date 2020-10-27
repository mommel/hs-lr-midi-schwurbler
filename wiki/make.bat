cls
@echo off
setlocal
echo ***********************************************

if [%1]==[/?] GOTO HELP
if [%1]==[install] GOTO INSTALL
if [%1]==[] GOTO GENCHECK


echo * I don't support that
echo * you can use make /? for HELP
GOTO DONE

:PYCHECK
python -v
if %ERRORLEVEL% NEQ 0 GOTO NOPYERR
cls
GOTO INSTALL

:GENCHECK
python multilang_md.py --help 
if %ERRORLEVEL% NEQ 0 GOTO INSTALLFIRST
cls
GOTO GEN

:GEN
echo * Deleting build folder
rmdir /S /Q "%CD%\build"
echo * Creating build folder
mkdir "%CD%\build"
echo * Copying src files
copy "%CD%\src\*.md" "%CD%\build\" >nul
echo * Generating language files
cd build
python ../multilang_md.py -r
cd .. 
if %ERRORLEVEL% NEQ 0 GOTO GENERROR
echo * Cleaning up build folder
del "%CD%\build\*.base.md" /f /q
GOTO DONE

:NOPYERR
echo * Please install python3 with pip
GOTO DONE	

:INSTALLFIRST
echo * You don't have the needed tools installed
echo * You might want to run:
echo * make install 
GOTO DONE

:INSTALL
echo *
echo * Installing pip requirements
echo *
pip install -r requirements.txt
echo * 
python getscript.py
GOTO DONE


:HELP
echo * Use make install to install preqisites
echo * Use make to run the generator
GOTO DONE

:GENERROR
pause
GOTO DONE

:DONE
echo ***********************************************
