@echo off


rem Runs OpenSesame in a specific environment.


rem Set the environment name:
set ENVNAME=opensesame-py38

rem Check for conda:
call find_conda.bat
if %CONDAPATH%==0 (
    echo OpenSesame cannot be launched in %ENVNAME%
    exit /B
)

rem Activate the environment, and run OS:
call %CONDAPATH%condabin\activate.bat %ENVNAME%
opensesame


rem Note, OpenSesame takes in the exp filename as the first arg.
rem As such, ypass a filename to it to automatically open an experiment.