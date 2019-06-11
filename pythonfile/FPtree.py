'''
fpGrowth 算法寻找频繁项集
'''
from __future__ import print_function
import pandas as pd
import csv
import numpy as np
import string
import json
'''
1.构造fp树节点的结构体：
/*@name 节点代表的物品名称
 *@count 该节点被重复使用的次数
 *@nodeLink 用来横向连接各个节点的指针
 *@parent 父亲节点的指针
 *@children 存放孩子节点的字典
 *@inc 增加节点计数
 *@disp 打印以某节点为根节点的fp树，用空格表示树里面的父子节点关系
 */
'''
class treeNode:
    def __init__(self, nameValue, numOccur, parentNode):
        self.name = nameValue#节点名字
        self.count = numOccur#节点的计数值
        self.nodeLink = None#用于指向下一个名字相同的节点
        self.parent = parentNode#指向父节点
        self.children = {}#子节点用字典存储
    #增加节点计数值
    def inc(self, numOccur):
        self.count += numOccur
    #打印输出此节点为根的树
    def disp(self, ind=1):
        print(' ' * ind, self.name, ' ', self.count)
        for child in self.children.values():
            child.disp(ind + 1)
'''
2.建树
/*@dataSet 用来建树的数据，数据是一个字典类型，字典的键是一类清单集合，值是它出现的次数
 *@minSup 最少出现次数，用来确定一个物品是否是频繁出现的
 *@retTree 返回参数1，表示构造的fp树的树根
 *@headerTable 返回参数2，表示fp数里面每个节点构成横向链表头结点数组
 */
'''
def createTree(dataSet, minSup=1):
    # 统计每个项目出现的次数
    headerTable = {}#初始化头指针表
    #遍历数据集中每个单个数据，统计频度
    for trans in dataSet:
        for item in trans:
            headerTable[item] = headerTable.get(item, 0) + dataSet[trans]
            # print(headerTable)

    # 支持度小于要求的删去。
    for k in list(headerTable.keys()):
        if headerTable[k] < minSup:
            # print(headerTable[k])
            del (headerTable[k])
    # print(headerTable)


    # 构造频繁1项集，若集合为空，则返回空树
    freqItemSet = set(headerTable.keys())
    # print(headerTable.values())
    if len(freqItemSet) == 0:
        return None, None
    # print(minSup)
    # 将headerTable扩展一维，一维存放各个事件频数的同时，另一维存放该事件第一个节点的指针
    for k in headerTable:
        headerTable[k] = [headerTable[k], None]#element：[count,node]
    # print(headerTable)

    # 创建树根
    retTree = treeNode('Null Set', 1, None)

    # 枚举数据中每次购买清单tranSet 和它出现的次数 count
    # 对于每个清单，从中选择频繁的事物放入字典localID
    # 对localID字典中键值按照频繁程度由大到小排序后放入列表orderedItem
    # 通过updateTree将orderedItem中事件更新到树上

    for tranSet, count in dataSet.items():
        localID = {}
        #遍历数据中的每个元素，若频繁则记录其频度
        for item in tranSet:
            if item in freqItemSet:
                localID[item] = headerTable[item][0]#element:count
        # print(localID)
        if len(localID) > 0:
            #根据全局频数从大到小对单样本排序
            orderedItem = [v[0] for v in sorted(localID.items(), key=lambda p: (p[1],-p[0]), reverse=True)]#对每个元素进行排序
            # print(orderedItem)
            #用过滤且排序后的样本更新树
            updateTree(orderedItem, retTree, headerTable, count)

    # 返回结果
    return retTree, headerTable
'''
3.更新fp树
/*@item 已排序待加入fp树的事物清单
 *@inTree fp树的根节点
 *@headerTable 横向链表的头结点数组
 *@count 这种购物清单有几份
 */
'''
def updateTree(items, inTree, headerTable, count):
    # 采用递归的方式，对清单内逐个元素进行处理
    # 如果列表内当前节点在fp树当前位置的孩子列表里，只需让对应孩子节点计数加count
    # 否则需要新增一个孩子节点，并且需要修改链表
    # 递归处理下一个元素
    # print(count)
    # print(items)
    if items[0] in inTree.children:
        #判断items的第一个结点是否已作为子结点
        inTree.children[items[0]].inc(count)
        # print(inTree.children[items[0]].inc(count))

    else:
        #创建新的分支
        inTree.children[items[0]] = treeNode(items[0], count, inTree)
        #更新相应频繁项集的链表，往后添加
        if headerTable[items[0]][1] == None:
            headerTable[items[0]][1] = inTree.children[items[0]]
        else:
            updateHeader(headerTable[items[0]][1], inTree.children[items[0]])
    #递归
    if len(items) > 1:
        updateTree(items[1::], inTree.children[items[0]], headerTable, count)
        # print(items[1::])
        # print(headerTable.values())
'''
3.更新链表
  这里某个事物多开辟一个节点时，要加入相应的链表，这里的代码采用的尾插的方法
  当然也可以改成头插来提高效率

/*@nodeToTest 相应链表的头结点
 *@targetNode 待插入的新节点
 */
'''
def updateHeader(nodeToTest, targetNode):
    while (nodeToTest.nodeLink != None):
        nodeToTest = nodeToTest.nodeLink
    nodeToTest.nodeLink = targetNode
'''
4.从树上某节点开始，往上回溯，将路径上节点存在列表prefixPath中
/*@leafNode fp树上当前位置节点
 *@prefixPath 存放前缀路径的列表 
 */
'''
def ascendTree(leafNode, prefixPath):
    if leafNode.parent != None:
        prefixPath.append(leafNode.name)
        ascendTree(leafNode.parent, prefixPath)
'''
5.对于某个事物，生成包含该事物的条件模式基，并且格式与建树的数据集格式一致，便于后面的递归。
/*@basePat 基础事物
 *@treeNode 用来导引链表的节点
 */
'''
def findPrefixPath(basePat, treeNode):
    # print(basePat)
    condPats = {}
    while treeNode != None:
        prefixPath = []
        ascendTree(treeNode, prefixPath)#prefixPath是倒过来，从treeNode开始到根
        if len(prefixPath) > 1:
            condPats[frozenset(prefixPath[1:])] = treeNode.count#关联treeNode的计算
        treeNode = treeNode.nodeLink#下一个basePat结点
    # print(condPats)
    return condPats
'''
6.从已建好的树上挖掘频繁项集
/*@inTree树根
 *@headerTable横向链表
 *@minSup 最小支持度
 *@prefix 记录前缀
 *freqItemList 最后的结果
 */
'''
def mineTree(inTree, headerTable, minSup, preFix, freqItemList):
    # 将当前事物按频繁程度排序后放入列表bigL
    #最开始的频繁项集是headerTable中的各元素
    # print(headerTable.items())
    bigL = [v[0] for v in sorted(headerTable.items(), key=lambda p: str(p[1]))]#根据频繁项集的总频次排序
    # print(bigL)
    # 枚举每个事物，将其固定到前缀，然后执行fp递归算法
    for basePat in bigL:
        # print(basePat)

        newFreSet = preFix.copy()

        newFreSet.add(basePat)
        # print(newFreSet)
        freqItemList.append(newFreSet)
        # print(freqItems)
        #当前频繁项集的条件模式基
        # headerTable[basePat][1] basePat在FP树中的第一个结点
        condpattBases = findPrefixPath(basePat, headerTable[basePat][1])
        # print(condpattBases)
        #构造当前频繁项集的条件FP树
        myCondTree, myHead= createTree(condpattBases, minSup)
        # print(condpattBases)
        if myHead != None:
            '''打印各模式基的fp树
            print('condition tree for: ',newFreSet)
            myCondTree.disp(1)
            '''
            #递归挖掘条件FP树
            mineTree(myCondTree, myHead, minSup, newFreSet, freqItemList)
            # print(freqItemList)
'''
7.简单的数据集合，用来测试程序
'''
def loadSimpData():
    simpDat=[]
    file=open("data.txt",'r')
    line=file.read()
    # print(line)
    dic=json.loads(line)
    # print(dic.values())
    simpDat=dic.values()
    file.close()
    return simpDat
'''
8.将简单数据集转变成建树所需的字典类型element:count
'''
def createInitSet(dataSet):
    retDict = {}
    for trans in dataSet:
        retDict[frozenset(trans)] = 1  # retDict.get(frozenset(trans),0)
        # print(retDict)
    return retDict
'''
9.将01矩阵类型转变成建树时所需的字典类型
'''
def transData(dataSet):
    retDict = {}
    (m, n) = dataSet.shape
    # print(m, n)
    for i in range(m):
        st = set([])
        for j in range(n):
            if dataSet[i][j] == True:
                st.add(j)
        retDict[frozenset(st)] = retDict.get(frozenset(st), 0) + 1
        # print(retDict)
    return retDict
'''
10.进行关联分析，传入建树所需的字典类型数据以及阈值T，返回多元频繁项集
'''
def associationAnalysis(dataSet, T):
    myFPtree, myHeaderTab = createTree(dataSet, T)
    if (type(myFPtree) == None):
        return []
    freqItems = []
    mineTree(myFPtree, myHeaderTab, T, set([]), freqItems)

    ans = []
    for i in freqItems:
        if len(i) > 1:
            ans.append(i)
    return ans

'''
输入一个ID，寻找包含它的所有项集，进行筛选得到最大频繁项集
'''
def result_add(freqItems):
    # print(freqItems)
    listdic={}
    lista = set()
    file = open("data.txt", 'r')
    line = file.read()
    dic = json.loads(line)
    # list = dic.values()
    for k in dic.keys():
        # print(type(k))
        for i in range(len(dic[k])):
            # print(dic[k])
            for j in range(len(freqItems)):
                if dic[k][i] in freqItems[j]:
                    # print(dic[k][i])
                    lista.update(freqItems[j])
                    # print(lista)
        sets = set(dic[k]) ^ lista
        lists = list(sets)
        listdic[k]=lists
    file.close()
    return listdic

simpDat = loadSimpData()#数据集
# print(simpDat)
initSet = createInitSet(simpDat)#字典数据集

myFPtree,myHeaderTab= createTree(initSet,3)

freqItems = []
mineTree(myFPtree,myHeaderTab,3,set([]),freqItems)
resultdic=result_add(freqItems)
resultsplit=json.dumps(resultdic)
resultsplit=resultsplit.split("{\"")

# print(resultsplit[1])
rs=resultsplit[1].split(", \"")

# print(resultsplit)
# for k in resultdic.keys():
#     print(k,resultdic[k])
#显示全部内容
pd.set_option("display.max_rows",None)
pd.set_option("display.max_columns",None)
# result=pd.DataFrame(freqItems)
# #把NAN替换成0
# result=result.fillna(0).astype("int")
# print(listresult)
file=open("out.txt",'w')
for i in rs:
    str="\""+i+"\n"
    # print(str)
    # file.write("\""+i+"\n")
    file.write(str)
file.close()






