import pymysql

db = pymysql.connect(host='localhost',
                     user='root',
                     password='12345678',
                     database='volunteeradmissionsystem',
                     charset='utf8')

# 使用 cursor() 方法创建一个游标对象 cursor
cursor = db.cursor()

# # 使用 execute()  方法执行 SQL 查询
# cursor.execute("SELECT * FROM auth_permission")
#
# # 使用 fetchone() 方法获取单条数据.
# defata = cursor.fetchall()
# print(defata)
# print("数据库连接成功！")
#
# # 关闭数据库连接
# db.close()

def insret(SQL):
    try:
        sql = SQL

        # 运行sql语句
        cursor.execute(sql)
        # 修改
        db.commit()
        # 关闭游标
        cursor.close()
        # 关闭连接
        db.close()
        print("victory!")
    except:
        print("false")



