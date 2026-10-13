# Tools for Machine Learning

*scikit-learn, tidymodels, PyTorch, TensorFlow*

## scikit-learn

scikit-learn is great for traditional machine learning tasks like classification, regression, clustering, etc.

A good starting place is getting comfortable with NumPy, pandas, and Matplotlib in Python so that you can clean your data and split it into features (X) and a target (y). After that, learn the different ML algorithms and when to use them.

## tidymodels

tidymodels is similar to scikit-learn but in R, and it follows tidyverse principles. Read more in the [tidymodels getting-started guide](https://www.tidymodels.org/start/models/).

## Types of Machine Learning Algorithms

- **Supervised Learning**
  - Classification: Logistic Regression
  - Regression: Linear Regression
  - Both: Decision Trees, Random Forests, Gradient Boosting, Support Vector Machines (SVM)
- **Unsupervised Learning**
  - Clustering: K-Means Clustering, Hierarchical Clustering
  - Dimensionality Reduction: Principal Component Analysis (PCA)
- **Reinforcement Learning**
  - Game-playing agents (e.g., AlphaGo), robotics, and fine-tuning large language models (RLHF)

## Data Splitting

Divide your data into the following subsets:

- **Training Data:** Used to fit the model.
- **Validation Data:** Used for tuning hyperparameters, comparing models, and detecting overfitting.
- **Testing Data:** Used once, at the end, to evaluate the final model's performance on unseen data.

## Choosing the Right ML Algorithm

![Machine Learning Algorithm Cheat Sheet ([source](https://learn.microsoft.com/en-us/azure/machine-learning/algorithm-cheat-sheet?view=azureml-api-1))](images/ml.png)

## Neural Networks

Neural networks are used for deep learning and are fairly advanced. The two most widely used deep learning frameworks are [PyTorch](https://pytorch.org/) and [TensorFlow](https://www.tensorflow.org/). PyTorch is more common in research and is a good default if you're starting out.

## Basic Hyperparameters in Neural Networks

- **Learning Rate:** Controls how quickly the model updates its weights.
  - Too high – the model may overshoot and fail to converge (it bounces around).
  - Too low – the model converges very slowly and may get stuck in local minima.
- **Batch Size:** Number of training examples used in one update of model weights.
  - **Stochastic Gradient Descent (SGD):** Batch size = 1
  - **Mini-batch SGD:** Batch size \> 1 but smaller than the full dataset
  - **Full-batch:** Entire dataset used (rare due to memory constraints)
- **Epoch:** One complete pass through the entire training dataset.
  - Example: 1,000 samples / batch size 100 = 10 iterations per epoch

Josh Starmer has a great course on YouTube that walks you through the principles of machine learning: the [StatQuest machine learning playlist](https://www.youtube.com/playlist?list=PLblh5JKOoLUICTaGLRoHQDuF_7q2GfuJF).
