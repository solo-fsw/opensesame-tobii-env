@echo OFF


rem   This script creates and configures a python environment for OpenSesame.
rem   You only need to run this once. It may take a few minutes to complete.


rem Set the environment name and python version:
set ENVNAME=opensesame-py38
set PYTHONVER=3.8

rem Check for conda:
call find_conda.bat
if %CONDAPATH%==0 (
    echo Environment could not be created.
    pause
    exit /B
)

rem  Create and activate the environment:
call %CONDAPATH%condabin\conda.bat create -n %ENVNAME% python=%PYTHONVER% -y
call %CONDAPATH%condabin\activate.bat %ENVNAME%

rem Configure:
call conda config --add channels cogsci --add channels conda-forge
call conda install python-opensesame opensesame-extension-osweb opensesame-plugin-psychopy psychopy rapunzel python-pygaze -y

rem Install other packages:
call pip install soundfile pygame yolk3k opensesame-extension-osf python-qtpip http://files.cogsci.nl/expyriment-0.10.0+opensesame2-py3-none-any.whl
call pip install tobii_research

rem Deactivate env:
call conda deactivate

echo Done. New OpenSesame environment created: %ENVNAME%.
pause