import pandas as pd
import pymysql
import os
import zipfile

from django.conf import settings
from django.http import FileResponse, HttpResponseNotFound, HttpResponse, StreamingHttpResponse, \
    Http404  # 确保已经导入FileResponse
connection = pymysql.connect(
    host='localhost',  # 数据库地址
    user='root',  # 数据库用户名
    password='12345678',  # 数据库密码
    db='volunteeradmissionsystem',  # 数据库名称
    # charset = 'utf8 -- UTF-8 Unicode'
)
cursor = connection.cursor()


def saveAsExcel(name):
    query = "SELECT * FROM " + name
    df = pd.read_sql_query(query, connection)
    filename=r"D:\computerman\testdj\template\download\\"+name+".xlsx"
    df.to_excel(filename, index=False, engine='openpyxl')


def foreachDatabase():
    sql = """SELECT TABLE_NAME AS view_name
    FROM INFORMATION_SCHEMA.VIEWS
    WHERE TABLE_SCHEMA = 'volunteeradmissionsystem';"""
    cursor.execute(sql)
    results = cursor.fetchall()
    for result in results:
        print(result[0])
        saveAsExcel(str(result[0]))
    names= ("adjustment", "admission", "admitted", "major", "students",  "students", "withdrawal")
    for name in names:
        print(str(name))
        saveAsExcel(str(name))



def download_zip(request):
    file_path = r'D:\computerman\testdj\template\zip\file.zip'
    try:
        response = FileResponse(open(file_path, 'rb'))
        response['content_type'] = "application/octet-stream"
        response['Content-Disposition'] = 'attachment; filename=' + os.path.basename(file_path)
        return response
    except Exception:
        raise Http404





def zip_dir():
    dir_path =r"D:\computerman\testdj\template\download"
    zip_path =r"D:\computerman\testdj\template\zip\file.zip"

    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as zip_file:
        for foldername, subfolders, filenames in os.walk(dir_path):
            for filename in filenames:
                file_path = os.path.join(foldername, filename)
                zip_file.write(file_path, file_path[len(dir_path):])

def main():
    download_zip()


if __name__ == "__main__":
    main()
