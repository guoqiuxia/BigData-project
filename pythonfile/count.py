import pandas as pd
import numpy as np
import math
import os
import time
import datetime
import operator

def loadData():
    rnames = ['UserID', 'CourseID', 'Timestamp', 'isLike']
    all_ratings = pd.read_table('rs.log', sep='\\s+', header=None, names=rnames, nrows=300000, engine='python')
    all_ratings = all_ratings.iloc[1:]
    return all_ratings

def count(ratings,UserUID,courseID,):
    ratings = ratings.loc[(ratings['UserID'] == UserUID) & (ratings['CourseID']==courseID) & (ratings['isLike']==0)]
    countData=ratings.iloc[:,0].size
    return countData

if __name__=='__main__':
    ratings=loadData()
    Users = set(ratings['UserID'].tolist())
    file = open('countResult.txt', 'w')
    for user in Users:
        listCourse=set(ratings['CourseID'][ratings['UserID'] ==user].tolist())
        for course in listCourse:
            file.write(str(user) + " " + str(course) + " "+str(count(ratings,user,course))+"\n")