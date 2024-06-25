@echo OFF


rem   This script creates and configures a python environment for OpenSesame3.
rem   You only need to run this once. It may take a few minutes to complete.


rem Set the environment name:
set ENVNAME=opensesame3-py38

rem Check for conda:
call %~dp0\find_conda.bat
if %CONDAPATH%==0 (
    echo Environment could not be created.
    pause
    exit /B
)

rem  Create and activate the environment:
call %CONDAPATH%condabin\conda.bat env create -f %~dp0\%ENVNAME%.yml
call %CONDAPATH%condabin\activate.bat %ENVNAME%

rem Install other packages:
call pip install http://files.cogsci.nl/expyriment-0.10.0+opensesame2-py3-none-any.whl
call pip install git+https://github.com/solo-fsw/opensesame3_plugin_markers

rem Deactivate env:
call conda deactivate

echo Done. New OpenSesame environment created: %ENVNAME%.
pause