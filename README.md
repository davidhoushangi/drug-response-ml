# Drug Sensitivity Prediction from Gene Expression

## Overview
This project explores how machine learning can be used to predict drug sensitivity in cancer cell lines based on RNA-seq expression data. By combining publicly available data from the **Genomics of Drug Sensitivity in Cancer (GDSC)** and the **Cancer Cell Line Encyclopedia (DepMap/CCLE)**, the project builds models that estimate how responsive different cell lines are to specific compounds. The work demonstrates the potential of computational methods to accelerate **drug discovery** and support **personalized medicine**.

---

## Objectives
- Integrate gene expression profiles with drug response measurements.  
- Build baseline regression models (Ridge, Lasso) and tree-based models (XGBoost).  
- Evaluate model performance using held-out test sets (RMSE, MAE).  
- Apply explainability methods (SHAP) to identify genes most associated with drug sensitivity.  

---

## Data Sources
- **Drug Response (AUC/IC50):** [GDSC](https://www.cancerrxgene.org/)  
- **RNA-seq Expression:** [DepMap/CCLE](https://depmap.org/portal/download/)  

Data is provided under their respective licenses and is used here for research and educational purposes only.

---

## Methods
1. **Preprocessing**  
   - Merge cell line identifiers across GDSC and DepMap.  
   - Filter missing data and select highly variable genes.  
   - Normalize features and prepare train/test splits.  

2. **Modeling**  
   - Baseline linear models (Ridge, Lasso).  
   - Non-linear models (Random Forest, XGBoost).  
   - Hyperparameter tuning with cross-validation.  

3. **Evaluation**  
   - Metrics: Root Mean Squared Error (RMSE), Mean Absolute Error (MAE).  
   - Comparison of linear vs tree-based approaches.  

4. **Interpretability**  
   - Use SHAP values to highlight influential genes.  
   - Compare top features to known biomarkers from literature.  

---
## Repository Structure

drug-response-ml/

├─ data/ # raw, interim, processed datasets

├─ notebooks/ # Jupyter notebooks (EDA, modeling, explainability)

├─ src/ # helper scripts for preprocessing, training, evaluation

├─ reports/ # results, figures, metrics

├─ environment.yml # reproducible conda environment

└─ README.md # project description

Run the notebooks in order:

00_download_and_merge.ipynb

01_eda_and_qc.ipynb

02_model_train_eval.ipynb

03_explainability_shap.ipynb

## Reproducibility
To set up the environment and run the notebooks:

## Figures

Example SHAP explainability plot (Paclitaxel, XGBoost model):

## Why This Matters?

Computational approaches like this project can reduce reliance on costly wet-lab experiments, generate new hypotheses for biomarker discovery, and guide personalized treatment strategies. It illustrates how data-driven methods can bridge biology and engineering in the context of drug development.

## Limitations & Next Steps

Current models are drug-specific and may not generalize across compounds.

Dataset imbalance (some drugs tested in many more lines than others).

## Future directions:

Multi-drug multitask neural networks.

Integration of mutations, copy number variation, and pathway-level features.

Benchmarking against other pharmacogenomic pipelines.

## Citations





## Acknowledgments

GDSC for providing drug response data.

DepMap/CCLE for gene expression profiles.

The open-source Python ecosystem (scikit-learn, XGBoost, SHAP).

## Disclaimer

This project is for educational and research purposes only. It is not intended for clinical decision-making or therapeutic use.

