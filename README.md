# Info
Information about the purpose and usage of these scripts can be found on our [Wiki](https://researchwiki.solo.universiteitleiden.nl/xwiki/wiki/researchwiki.solo.universiteitleiden.nl/view/Software/OpenSesame/Tobii%20and%20OpenSesame/).

The scripts in this repo automate the process of creating a Conda environment. The environments are created from a yaml file, a definition file that is fully resolved and version-locked. 

# Installing the OpenSesame 4 with Python 3.10 environment
1. Make sure Anaconda is installed (see https://www.anaconda.com/).
1. Download the opensesame4 folder located inside this repo (click here to download the folder with downgit).
1. Unzip the opensesame4 folder.
1. Make sure find_conda.bat and opensesame4-py310.yml are located in the same folder as create_env_opensesame4-py310.bat.
1. Run create_env_opensesame4-py310.bat (by double-clicking on it).
1. Possibly, you will get a pop-up saying "Do you want to allow this app to make changes to your device?" concerning Python. Press "yes" if possible or "no" (does not seem to affect anything). 
1. When the script is done, press any key to close the screen.
1. Run run_os4_in_env.bat to activate the opensesame4-py310 environment and launch OpenSesame.

# Installing the OpenSesame 3 with Python 3.8 environment
1. Make sure Anaconda is installed (see https://www.anaconda.com/).
1. Download the opensesame3 folder located inside this repo (click here to download the folder with downgit).
1. Unzip the opensesame3 folder.
1. Make sure find_conda.bat and opensesame3-py38.yml are located in the same folder as create_env_opensesame3-py38.bat.
1. Run create_env_opensesame3-py38.bat (by double-clicking on it).
1. Possibly, you will get a pop-up saying "Do you want to allow this app to make changes to your device?" concerning Python. Press "yes" if possible or "no" (does not seem to affect anything). 
1. When the script is done, press any key to close the screen.
1. Run run_os3_in_env.bat to activate the opensesame3-py38 environment and launch OpenSesame.

