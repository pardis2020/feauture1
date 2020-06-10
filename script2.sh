#!/usr/bin/python3

import pandas as pd

df=pd.read_csv("/home/pardis/Downloads/2007.csv")

fly=df[['ArrDelay','Origin']][df['Origin']=="SFO"].head(3)
print(fly[['ArrDelay','Origin']],"\n")

fly=df[['Dest','Origin']].groupby("Dest").count().sort_values(by="Origin",ascending=False).head(3)
fly["Total"]=fly["Origin"]
fly.drop("Origin",axis=1,inplace=True)
print("Top 3 Destinations:","\n",fly)


