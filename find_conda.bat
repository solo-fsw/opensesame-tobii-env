@echo OFF


rem  This script that checks if and where conda is installed.
rem  You do not need to run this script.


rem Check if conda is installed at the default Anaconda location
rem This is the standard ISSC installation:
set CONDAPATH=C:\ProgramData\Anaconda3\
if exist %CONDAPATH% (
  echo Using Anaconda at: %CONDAPATH%
  GOTO CONDA_FOUND
)

rem Otherwise, check if miniconda is installed for all users:
set CONDAPATH=C:\ProgramData\Miniconda3\
if exist %CONDAPATH% (
  echo Using Miniconda at: %CONDAPATH%
  GOTO CONDA_FOUND
)

rem Otherwise, check if miniconda is installed for the user:
set CONDAPATH=C:\Users\%USERNAME%\Miniconda3\
if exist %CONDAPATH% (
  echo Using Miniconda at: %CONDAPATH%
  GOTO CONDA_FOUND
)

set CONDAPATH=0
echo Conda not found. Please install it first.
exit /B

rem https://xkcd.com/292/
:CONDA_FOUND