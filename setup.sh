# Install TensorFlow Apple dependencies
conda install -c apple tensorflow-deps
# Install base TensorFlow
pip install tensorflow-macos
# Install metal plugin
pip install tensorflow-metal

# Install Jupyter Notebook
conda install -c conda-fprge -y jupyter
# Install Pandas
conda install -c conda-forge -y pandas

# Test GPU recognition
echo "Testing GPUs' recognition"
python ./gpu-test.py
