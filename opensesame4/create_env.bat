@echo OFF


rem   This script creates and configures a python environment for OpenSesame4.
rem   You only need to run this once. It may take a few minutes to complete.


rem Set the environment name and python version:
set ENVNAME=opensesame4-py310
set PYTHONVER=3.10

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
call conda config --add channels conda-forge --add channels cogsci
call conda install opensesame=4.0.24 opensesame-extension-osweb opensesame-extension-updater opensesame-plugin-psychopy rapunzel pygaze qtconsole pyqtwebengine wxpython -y

rem Install other packages:
call pip install soundfile pygame http://files.cogsci.nl/expyriment-0.10.0+opensesame2-py3-none-any.whl pillow==9.5 tobii_research==1.11.0 git+https://github.com/solo-fsw/opensesame4_plugin_markers@dev psychopy psychopy-sounddevice opensesame-plugin-media-player-mpy

rem Deactivate env:
call conda deactivate

echo Done. New OpenSesame environment created: %ENVNAME%.
pause