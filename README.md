# Setup TensorFlow on M1 silicon

## Manual setup
1. Install Xcode Command Line Tools
```
xcode-select --install
```
2. Install Miniforge
Install Miniforge3 from[GitHub](https://github.com/conda-forge/miniforge).
If you want to stop conda from activating automatically run:
```
conda config --set auto_activate_base false
```
3. Create a virtual environment
```
conda create --name mlp python=3.9
```
Activate the environment with:
```
conda activate mlp
```
NOTE: you can change `mlp` with a name of your choose for the environment.
4. Install TensorFlow-MacOS
```
conda install -c apple tensorflow-deps
```
5. Install base TensorFlow
```
pip install tensorflow-macos
```
6. Install metal plugin
```
pip install tensorflow-metal
```
7. Install Jupyter Notebook
```
conda install -c conda-forge -y jupyter
```
8. Install Pandas
```
conda install -c conda-forge -y pandas
```
* Check if GPUs are recognized:
From Python run the following script
```
import tensorflow as tf
print("Num GPUs Available: ", len(tf.config.experimental.list_physical_devices('GPU')))
```

## Automatic setup
1. Follow the manual setup steps 1-3 to install conda and setup the environment
2. Make sure to activate the newly created environment
```
conda activate mlp
```
2. In terminal run `setup.sh`
```
zsh setup.sh
```
or
```
bash setup.sh
```
NOTE: the terminal might ask for permission to install packages
3. After the setup the script will automatically run a test for for GPUs' detection.
If the number of recognized GPUs correspond to the number of the ones actually installed in the system, the setup process will be successful.
