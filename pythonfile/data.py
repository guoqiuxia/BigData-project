import  MySQLdb
import random
import json

db=MySQLdb.connect("localhost","root","","plailing",charset='utf8')
# 获取游标
cursor=db.cursor()
sql="select userId from tbl_user"
cursor.execute(sql)
results=cursor.fetchall()
dict={}
for email in results:
    rand=range(1,28)
    drand=random.sample(rand,5)
    dict[str(email[0])]=drand
db.close()

file=open("ucdata.txt","w")
file.write(json.dumps(dict))
file.close()




