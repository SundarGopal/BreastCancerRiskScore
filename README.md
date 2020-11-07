# BreastCancerRiskScore
In this project, we have computed the risk score for breast cancer patients using texture features extracted from the mammograms, Age, Density from the BCDR Dataset along with area-based density features.
First, we did the preprocessing of the mammograms using median noise filtering and Contrast Limited Adaptive Histogram Equalization.
After that, we used Empirical wavelet transform for the multiresolution of the mammograms and then texture features are extracted using two different methods Local Binary patterns and Scale Invariant Feature Transform. Later, the feature vector obtained from the two methods are fused together.
Now, along with the feature vector, age and BIRADS density are included as a risk factor for analyzing the risk score.
Area-related features are extracted after using Gaussian filter and threshold value to retrieve only bright (dense) pixel values.
Two models are trained separately and the decision making probability is finally taken as the average of the two models.
The output of the models are already taken from the BCDR website as whether the result is benign or malignant.







XXX 0_(number) and 1_(number) files should be put under the file name Training_1 for this program to work.XXX
