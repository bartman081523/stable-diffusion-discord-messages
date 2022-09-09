import pandas as pd
import glob
import os
os.chdir("./raw-messages/")
list=glob.glob("*.csv")

for file in list:
	print(file)
	data = pd.read_csv(file)
	data.drop("AuthorID", inplace=True, axis=1)
	data.drop("Author", inplace=True, axis=1)
	data.drop('Date', inplace=True, axis=1)
	data.drop('Attachments', inplace=True, axis=1)
	data.drop('Reactions', inplace=True, axis=1)

	data.to_csv("../stripped-content/"+file+".stripped.csv")
