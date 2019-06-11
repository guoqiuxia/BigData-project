import pandas as pd
import numpy as np
import math
import os
import time
import datetime
import operator

def loadData():
    rnames = ['UserID', 'CourseID', 'Rating', 'Timestamp']
    all_ratings = pd.read_table('testFile.log', sep=',', header=None, names=rnames, nrows=300000, engine='python')
    return all_ratings
def loadCount():
    rnames = ['UserID', 'CourseID', 'Count']
    count_rat = pd.read_table('countResult.txt', sep=' ', header=None, names=rnames, nrows=300000, engine='python')
    return count_rat

def cmain(UserUID, all_ratings,count_rat, listExceptCourse):
    # 计算每部课程的平均打分,课程数(包含每个课程的id和平均分)
    def avgRating(ratings):
        courses_mean = ratings['Rating'].groupby(ratings['CourseID']).mean()  # 计算所有用户对课程X的平均打分
        # 得到了课程的id
        courses_id = courses_mean.index
        # 得到每个课程的平均分是多少
        courses_avg_rating = courses_mean.values
        return courses_id, courses_avg_rating, courses_mean

    # 计算课程相似度矩阵相，即建立矩阵
    def calculatePC(ratings):
        courses_id, courses_avg_rating, courses_mean = avgRating(ratings)
        pc_dic = {}
        top_course = len(courses_id)
        # 循环一个课程和它后面的课程，进行相似度的比较
        for i in range(0, top_course):
            for j in range(i + 1, top_course):
                courseAID = courses_id[i]
                courseBID = courses_id[j]
                # 查看评价A课程的用户有哪些
                see_coursesA_user = ratings['UserID'][ratings['CourseID'] == courseAID]
                # 查看评价B课程的用户有哪些
                see_coursesB_user = ratings['UserID'][ratings['CourseID'] == courseBID]
                # 同时给课程A、B评分的用户
                join_user = np.intersect1d(see_coursesA_user.values, see_coursesB_user.values)
                # 分别查看A、B课程的平均评分是多少
                courseA_avg = courses_mean[courseAID]
                courseB_avg = courses_mean[courseBID]
                key1 = str(courseAID) + ':' + str(courseBID)
                key2 = str(courseBID) + ':' + str(courseAID)
                value = twoCoursesPC(join_user, courseAID, courseBID, courseA_avg, courseB_avg, ratings)
                pc_dic[key1] = value
                pc_dic[key2] = value
                # 返回的是key和value值，value值存放的是这两个课程之间的相似度
        return pc_dic

    # 计算课程A与课程B的相似度，皮尔森相似度=sum(A-A^)*sum(B-B^)/sqrt(sum[(A-A^)*(A-A^)]*sum[(B-B^)*(B-B^)])
    def twoCoursesPC(join_user, courseAID, courseBID, courseA_avg, courseB_avg, ratings):
        cent_AB_sum = 0.0  # 相似度分子
        centA_sum = 0.0  # 分母
        centB_sum = 0.0  # 分母
        courseAB_pc = 0.0  # 课程A,B的相似度
        # 循环给A、B课程都打分的用户
        for u in range(len(join_user)):
            ratA = ratings['Rating'][ratings['UserID'] == join_user[u]][ratings['CourseID'] == courseAID].values[
                0]  # 用户给课程A评分
            ratB = ratings['Rating'][ratings['UserID'] == join_user[u]][ratings['CourseID'] == courseBID].values[
                0]  # 用户给课程B评分
            cent_AB = (ratA - courseA_avg) * (ratB - courseB_avg)  # 去均值中心化
            centA_square = (ratA - courseA_avg) * (ratA - courseA_avg)  # 去均值平方
            centB_square = (ratB - courseB_avg) * (ratB - courseB_avg)  # 去均值平方
            cent_AB_sum = cent_AB_sum + cent_AB
            centA_sum = centA_sum + centA_square
            centB_sum = centB_sum + centB_square
        if (centA_sum > 0 and centB_sum > 0):
            courseAB_pc = cent_AB_sum / math.sqrt(centA_sum * centB_sum)
        return courseAB_pc

    """
    预测用户U对哪些课程感兴趣。分三步，
     1）用户U过去X天看过的课程。
     2）提出用户U已看过的课程，根据用户U过去看过的课程，计算用户U对其他课程的打分.
     3) 拉去打分最高的的课程给用户推荐。
    预测用户U对课程C的打分。分三步：（先只做这个）
     1）用户U过去X天看过的课程。
     2）利用加权去中心化公式预测用户U对课程C的打分.

    """

    # 日期处理： -n天，然后转换为uinxtime时间戳
    # def timePro(last_rat_time, UserU):
    #     lastDate = datetime.datetime.fromtimestamp(last_rat_time[UserU])  # unix转为日期
    #     date_sub3 = lastDate + datetime.timedelta(days=-3)  # 减去3天
    #     unix_sub3 = time.mktime(date_sub3.timetuple())  # 日期转为unix
    #     return unix_sub3

    # 取用户最后一次评分前n天评估的视频进行预测
    # def getHisRat(ratings, last_rat_time, UserUID):
    #     # unix_sub3 = timePro(last_rat_time, UserUID)
    #     # UserU_info = ratings[ratings['UserID'] == UserUID][ratings['Timestamp'] > unix_sub3]
    #     UserU_info = ratings[ratings['UserID'] == UserUID]
    #     return UserU_info

    def getHisRat(ratings, UserUID):
        UserU_info = ratings[ratings['UserID'] == UserUID]
        return UserU_info

    # 预测用户U对课程C的打分
    def hadSeenCourseByUser(UserUID, Course, ratings, pc_dic, courses_mean):

        #last_rat_time = ratings['Timestamp'].groupby([ratings['UserID']]).max()  # 获取用户U最近一次评分日期
        UserU_info = getHisRat(ratings,UserUID)  # 获取用户U过去看过的课程

        flag = 0  # 表示新课程，用户U是否给课程打过分
        wmv = 0.0  # 相似度*mv平均打分去均值后之和
        w = 0.0  # 相似度之和
        pre_rating = 0.0
        course_userU = UserU_info['CourseID'].values  # 当前用户看过的课程
        if Course in course_userU:
            flag = 1
            pre_rating = UserU_info['Rating'][UserU_info['CourseID'] == Course].values
        else:
            for c in course_userU:
                key = str(c) + ':' + str(Course)
                # 这里要确保每个用户对一个视频只有一个评分
                rat_U_mv = UserU_info['Rating'][UserU_info['CourseID'] == c][
                    UserU_info['UserID'] == UserUID].values  # 用户U对看过课程mv的打分
                wmv = (wmv + pc_dic[key] * (rat_U_mv - courses_mean[c]))  # 相似度*mv平均打分去均值后之和
                w = (w + pc_dic[key])  # 看过课程与新课程相似度之和
                np.seterr(divide='ignore', invalid='ignore')
            pre_rating = (courses_mean[Course] + wmv / w)
        return pre_rating, flag


    # course_num = 100  # 控制课程数，只针对课程ID在该范围的数据进行计算，否则数据量太大
    # ratings = all_ratings[all_ratings['CourseID'] <= course_num]

    courses_id, courses_avg_rating, courses_mean = avgRating(all_ratings)
    pc_dic = calculatePC(all_ratings)  # 课程相似度矩阵

    # 预测
    diction = {}
    infer = {};



    # 用户所买的课程
    listUC=all_ratings['CourseID'][all_ratings['UserID'] == UserUID].tolist()
    # 关联规则得到的课程和用户所买课程之间的差值
    listExceptCourse1=list(set(listExceptCourse)-set(listUC))
    for i in listExceptCourse1:
        pre_ra, flag = hadSeenCourseByUser(UserUID, i, all_ratings, pc_dic, courses_mean)
        x = float(pre_ra)
        if math.isnan(x):
            pre_ra = 0.0
        if pre_ra<0:
            pre_ra=0.0
        if pre_ra>5:
            pre_ra=5.0
        infer[i] = pre_ra
    # a = sorted(infer.items(), key=operator.itemgetter(1), reverse=True)
    # listvalue = []
    # for i in a:
    #     listvalue.append(float(i[1]))
    # for i in a:
    #     diction[i[0]] = float(i[1]) / sum(listvalue)
    #     Users=set(count_rat['UserID'].tolist())
    #     if UserUID in Users:
    #         Courses=set(count_rat['CourseID'][count_rat['UserID']==UserUID])
    #         if i[0] in Courses:
    #             count=count_rat['Count'][count_rat['UserID']==UserUID][count_rat['CourseID']==i[0]].values
    #             diction[i[0]]=diction[i[0]]*(1-0.25*count[0])
    listvalue=[]
    for i in infer:
        listvalue.append(float(infer[i]))
    for i in infer:
        diction[i]=float(infer[i])/sum(listvalue)
        Users=set(count_rat['UserID'].tolist())
        if UserUID in Users:
            Courses = set(count_rat['CourseID'][count_rat['UserID'] == UserUID])
            if i in Courses:
                count=count_rat['Count'][count_rat['UserID']==UserUID][count_rat['CourseID']==i].values
                diction[i] = diction[i] * (1 - 0.25 * count[0])
                if count==4:
                    del diction[i]
    return diction


import json
import ast

if __name__ == '__main__':
    all_ratings = loadData()
    count_rat=loadCount()
    User = list(set(all_ratings['UserID']))
    list1 = []
    file = open('result.txt', 'w')
    for UserUID in User:
        file=open('gl.txt','r')
        listfile=file.readlines()
        for i in range(listfile.__len__()):
            listfile[i] = listfile[i].strip()
            lista = listfile[i].split(": ")
            if int(lista[0][1:2])==UserUID:
                arr=lista[1].split("[")
                arr1=arr[1].split("]")
                arr2=arr1[0].split(", ")
                listap=[]
                for i in arr2:
                    listap.append(int(i))
                diction = cmain(UserUID, all_ratings,count_rat,listap)
                dectionary = json.dumps(diction)
                file = open('result.txt', 'a')
                file.write(str(UserUID) + ";" + dectionary + "\n")
                break
            else:
                pass

