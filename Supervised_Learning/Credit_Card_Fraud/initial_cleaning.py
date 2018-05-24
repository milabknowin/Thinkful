
# coding: utf-8

# In[6]:


import pandas as pd
import numpy as np

def initial_cleaning(file):
    df=pd.read_csv(file)
    df=df.drop_duplicates()
    print(df.head())
    print(df.isnull().sum())
    return df

