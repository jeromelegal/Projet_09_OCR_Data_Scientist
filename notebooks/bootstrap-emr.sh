#!/bin/bash

# Installer wheel (aucune version spécifique requise)
sudo python3 -m pip install wheel

# Installer les bibliothèques avec des versions stables et compatibles
sudo python3 -m pip install "pillow==10.2.0"
sudo python3 -m pip install "pandas==2.1.4"
sudo python3 -m pip install "pyarrow==15.0.0"
sudo python3 -m pip install "boto3==1.34.56"
sudo python3 -m pip install "s3fs==2023.12.2"
sudo python3 -m pip install "fsspec==2023.12.2"

# Ajouter la librairie "rich" pour corriger l'erreur "No module named 'rich'"
sudo python3 -m pip install "rich"

# Ajouter "dm-tree" pour éviter l'erreur sur TensorFlow/Keras
sudo python3 -m pip install "dm-tree"
sudo python3 -m pip install "keras==3.0.1"
