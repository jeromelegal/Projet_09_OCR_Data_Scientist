# Projet_09_OCR_Data_Scientist

# Scalable Image Feature Extraction on the Cloud

## Overview

This project focuses on building a scalable image-processing pipeline in a **Big Data cloud environment**.

The goal is not to train a final image classifier, but to prepare an industrialized workflow able to process a growing volume of fruit images using **PySpark**, **transfer learning**, and **dimensionality reduction** on the cloud.

---

## Business Goal

The project is part of a broader use case where users could take a picture of a fruit with a mobile phone and receive useful information about it.

To support future scale, the objective here was to design a robust data pipeline able to:
- process many images efficiently
- extract useful visual features automatically
- reduce feature dimensionality
- and run the workflow in a cloud-based distributed environment

---

## Dataset

The project works on a dataset of labeled **fruit images** stored as `.jpg` files.

The pipeline reads the images in binary format, extracts the image label from the file path, computes deep-learning features, and stores the final outputs in a structured format for downstream use.

---

## Method

The workflow of the project was:

1. build and test the image-processing chain locally with **PySpark**
2. load images as binary files
3. preprocess and resize them for a pretrained CNN
4. extract image embeddings with **MobileNetV2**
5. convert the extracted features into Spark-compatible vectors
6. reduce dimensionality with **PCA**
7. package the workflow into a reusable Spark pipeline
8. deploy the processing strategy on **AWS EMR** with storage on **S3**

---

## Key Results

The project led to four main outcomes:

1. A full **PySpark image feature extraction pipeline** was successfully tested locally.
2. The image embeddings were extracted using **MobileNetV2** with the top layer removed, producing compact deep features for each image.
3. Dimensionality reduction was applied with **PCA**, and the selected setup keeps **90% explained variance with 186 principal components**.
4. A cloud deployment strategy was prepared using **AWS**, with **S3** for image/result storage and **EMR** for distributed processing.

Overall, this project shows how a computer vision preprocessing workflow can be adapted for larger-scale cloud execution.

---

## Tools

- Python
- PySpark
- TensorFlow / Keras
- MobileNetV2
- Pandas
- NumPy
- Pillow
- Matplotlib
- AWS S3
- AWS EMR
- Jupyter Notebook

---

## Repository Structure

```bash
.
├── model/
│   └── model_pca/
├── notebooks/
│   ├── 0_deploy_strategy.ipynb
│   ├── 0_local_spark_modelisation.ipynb
│   ├── 1_deploy_strategy.ipynb
│   ├── 1_local_spark_modelisation.ipynb
│   ├── 2_cloud_spark_modelisation.ipynb
│   ├── bootstrap-emr.sh
│   ├── environment.yml
│   └── requirements.txt
├── Présentation.pdf
└── README.md
```

---

## How to Run

Clone the repository:

```bash
git clone https://github.com/jeromelegal/Projet_09_OCR_Data_Scientist.git
cd Projet_09_OCR_Data_Scientist
```

Then open the notebooks with Jupyter:

```bash
jupyter notebook
```

Notes:
- local execution requires a working **PySpark** environment
- the cloud version expects access to **AWS S3** and an **EMR** cluster
- the bootstrap script installs the main libraries needed on the cluster

---

## Main Takeaways

This project helped me practice:

- distributed data processing with PySpark
- image preprocessing at scale
- transfer learning for feature extraction
- dimensionality reduction on image embeddings
- cloud-oriented pipeline design with AWS

It was also a strong introduction to Big Data tooling for computer vision workflows.

---

## Limitations

This project has a few important limitations:
- it focuses on feature extraction rather than a full end-to-end classifier
- cloud deployment remains a learning / prototype setup
- performance testing at larger industrial scale could be pushed further

A natural next step would be to connect this preprocessing pipeline to a downstream classification model or a production inference service.

---

## Author

**Jérôme Le Gal**  
Data Science student
