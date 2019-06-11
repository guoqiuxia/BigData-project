
import numpy as np
from numpy import random
import math
import copy
import sklearn.datasets
# .horseColicTraining.txt
from sklearn.preprocessing import scale
import matplotlib.pyplot as plt


f1 = open('training.txt','r')
f2 = open('data.txt','r')
f3 = open('result.txt','w')
trainingSet=[]
trainingLabels=[]
testSet=[]
testLabels=[]
for i in f1.readlines():
    # s.strip(rm) 删除s字符串中开头、结尾处，位于 rm删除序列的字符
    # s.lstrip(rm) 删除s字符串中开头处，位于 rm删除序列的字符
    # s.rstrip(rm) 删除s字符串中结尾处，位于 rm删除序列的字符
    # split("a",n)[::] 按a字符分割 分割n次 分割后为列表
    curline=i.strip().split(" ")
    # 类型转化
    floatline=list(map(float,curline))
    trainingSet.append(floatline[0:6])
    trainingLabels.append(floatline[-1])
f1.close()
for i in f2.readlines():
    # s.strip(rm) 删除s字符串中开头、结尾处，位于 rm删除序列的字符
    # s.lstrip(rm) 删除s字符串中开头处，位于 rm删除序列的字符
    # s.rstrip(rm) 删除s字符串中结尾处，位于 rm删除序列的字符
    # split("a",n)[::] 按a字符分割 分割n次 分割后为列表
    curline=i.strip().split(" ")
    # 类型转化
    floatline=list(map(float,curline))
    testSet.append(floatline[0:6])
f1.close()

# plt.scatter(trainingSet[trainingLabels == 1][:, 0], trainingSet[trainingLabels == 1][:, 1], s=40, c='r', marker='x',
#             cmap=plt.cm.Spectral)
# plt.scatter(trainingSet[trainingLabels == 0][:, 0], trainingSet[trainingLabels == 0][:, 1], s=40, c='y', marker='+',
#             cmap=plt.cm.Spectral)
# plt.show()



layer = [6, 3, 1]
Lambda = 0.005
alpha = 0.2
num_passes = 10000
m = len(trainingSet)


b = []
W = []
for i in range(len(layer) - 1):
    W.append(random.random(size=(layer[i + 1], layer[i])))
    b.append(np.array([0.1] * layer[i + 1]))
a = [np.array(0)] * (len(W) + 1)
z = [np.array(0)] * len(W)

W = np.array(W)


def costfunction(predict, labels):

    return sum((predict - labels) ** 2)


def error_rate(predict, labels):

    error = 0.0
    for i in range(len(predict)):
        predict[i] = round(predict[i])
        if predict[i] != labels[i]:
            error += 1
        print(predict[i])
    return error / len(predict)
def rate(predict):

    for i in range(len(predict)):
        predict[i] = round(predict[i])
        print(predict[i])
        f3.write(str(predict[i])+' ')



def sigmoid(z):
    return 1 / (1 + np.exp(-z))


def diff_sigmoid(z):
    return sigmoid(z) * (1 - sigmoid(z))


activation_function = sigmoid
diff_activation_function = diff_sigmoid


a[0] = np.array(trainingSet).T
y = np.array(trainingLabels)

for v in range(num_passes):
    for i in range(len(W)):
        z[i] = np.dot(W[i], a[i])
        for j in range(m):
            z[i][:, j] += b[i]
        a[i + 1] = activation_function(z[i])
    predict = a[-1][0]

    delta = [np.array(0)] * len(W)

    delta[-1] = -(y - a[-1]) * diff_activation_function(z[-1])

    for i in range(len(delta) - 1):
        delta[-i - 2] = np.dot(W[-i - 1].T, delta[-i - 1]) * diff_activation_function(z[-i - 2])

    delta_w = [np.array(0)] * len(W)
    delta_b = [np.array(0)] * len(W)
    for i in range(len(W)):
        delta_w[i] = np.dot(delta[i], a[i].T)
        delta_b[i] = np.sum(delta[i], axis=1)

    for i in range(len(W)):
        W[i] -= alpha * (Lambda * W[i] + delta_w[i] / m)
        b[i] -= alpha / m * delta_b[i]

print ('训练样本的未正则化代代函数值:', costfunction(predict, np.array(trainingLabels)))
print ('训练样本错误率:', error_rate(predict, np.array(trainingLabels)))


a[0] = np.array(testSet).T

m = len(testSet)
for i in range(len(W)):
    z[i] = np.dot(W[i], a[i])
    for j in range(m):
        z[i][:, j] += b[i].T[0]
    a[i + 1] = activation_function(z[i])
predict = a[-1][0]

rate(predict)
