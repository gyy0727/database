import json

from django.template import engines
from django.shortcuts import render
from django.http import JsonResponse, HttpResponse
from django.views.decorators.csrf import csrf_exempt
from common import excelsql
from django.contrib.auth import authenticate, login, logout

# 登录处理
allAdmitted = False
def signin(request):
    # 从 HTTP POST 请求中获取用户名、密码参数
    userName = request.POST.get('username')
    passWord = request.POST.get('password')
    data = excelsql.orderStudentJson()
    # 使用 Django auth 库里面的 方法校验用户名、密码
    user = authenticate(username=userName, password=passWord)

    # 如果能找到用户，并且密码正确
    if user is not None:
        if user.is_active:
            if user.is_superuser:
                login(request, user)
                # 在session中存入用户类型
                request.session['usertype'] = 'mgr'

                return JsonResponse({'ret': 1}, json_dumps_params={'ensure_ascii': False})
            else:
                return JsonResponse({'ret': 2, 'msg': 'Please log in with an administrator account'},
                                    json_dumps_params={'ensure_ascii': False})
        else:
            return JsonResponse({'ret': 3, 'msg': '用户已经被禁用'}, json_dumps_params={'ensure_ascii': False})

    # 否则就是用户名、密码有误
    else:
        return JsonResponse({'ret': 4, 'msg': 'Please log in with an administrator account'},
                            json_dumps_params={'ensure_ascii': False})


# 登出处理
def signout(request):
    # 使用登出方法
    logout(request)
    return JsonResponse({'ret': 5}, json_dumps_params={'ensure_ascii': False})


# 首页
def listorders(request):
    return render(request, "login.html")

#所有学生信息
def responseStudent():
    studentdata = json.dumps(excelsql.selectStudent())
    return JsonResponse({'ret': 6, 'studentData': studentdata}, json_dumps_params={'ensure_ascii': False})
    # print(studentdata)

#所有录取信息
def responseAdmission():
    admissiondata = json.dumps(excelsql.selectAdmission())
    # return JsonResponse({'ret': 6, 'studentData': admissiondata}, json_dumps_params={'ensure_ascii': False})
    print(admissiondata)
#所有专业招生信息
def responseMajor():
    majorData = json.dumps(excelsql.selectMajor())
    # return JsonResponse({'ret': 7, 'majorData': majorData}, json_dumps_params={'ensure_ascii': False})
    print(majorData)

#所有调剂学生信息
def responseWithdrawal():
    WithdrawalData = json.dumps(excelsql.selectWithdrawal())
    # return JsonResponse({'ret': 7, 'majorData': majorData}, json_dumps_params={'ensure_ascii': False})
    print(WithdrawalData)
#所有退档学生信息
def responseWithdrawal():
    WithdrawalData = json.dumps(excelsql.selectWithdrawal())
    # return JsonResponse({'ret': 7, 'majorData': majorData}, json_dumps_params={'ensure_ascii': False})
    print(WithdrawalData)
#所有退档学生信息
def responseAdjustment():
    adjustmentdata = json.dumps(excelsql.selectAdjustment())
    # return JsonResponse({'ret': 7, 'majorData': majorData}, json_dumps_params={'ensure_ascii': False})
    print(adjustmentdata)
#进行排序并调剂
def admission():
    orderStudents = excelsql.orderStudent()
    order = 1
    count = 1
    adjustment = 1
    withdrawal = 1
    for student in orderStudents:
        count = count + 1
        # 按分数高低遍历学生
        admitted = False
        i = 5
        for i in range(5, 11):
            student[i]
            if admitted == True:
                break
            if student[i] == None:
                continue
            major = excelsql.selectMajor(student[i])  # 专业招生信息

            for major_ in major:
                ZYDH = major_[1]
                result = excelsql.selectAdmitted(ZYDH)
                if result[0][1] == "0":
                    continue
                else:
                    if major_[7] is None:
                        if major_[8] is None:
                            if major_[9] is None:
                                admitted = True
                                excelsql.admitteing(student, major_, order)
                                order = order + 1
                                break
                        else:
                            if excelsql.JudgingStrings(student[12], major_[8]):
                                break
                            if excelsql.JudgingStrings(student[12], major_[9]):
                                break
                            admitted = True
                            excelsql.admitteing(student, major_, order)
                            order = order + 1
                            break
                    else:
                        if excelsql.JudgingStrings( major_[7],student[11]):
                            if major_[8] is None:
                                if major_[9] is None:
                                    admitted = True
                                    excelsql.admitteing(student, major_, order)
                                    order = order + 1
                                    break
                            else:
                                if excelsql.JudgingStrings(student[12], major_[8]):
                                    break
                                if excelsql.JudgingStrings(student[12], major_[9]):
                                    break
                                admitted = True
                                excelsql.admitteing(student, major_, order)
                                order = order + 1
                                break
                        break
        if admitted == True:
            continue
        if excelsql.JudgingStrings(student[4], "是"):
            sql3 = "insert into adjustment (调剂位次,考生号,姓名) values (%s,%s,%s)"
            excelsql.update(sql3, (str(adjustment), student[0], student[1]))
            adjustment = adjustment + 1
            admitted = True
            continue
        if excelsql.JudgingStrings(student[4], "否"):
            sql4 = "insert into withdrawal (退档位次,考生号,姓名) values (%s,%s,%s)"
            excelsql.update(sql4, (str(withdrawal), student[0], student[1]))
            withdrawal = withdrawal + 1
            admitted = True
            continue
    adjustmentFunc(order,withdrawal)

def adjustmentFunc(order,withdrawal):
    count=order
    orderAdjustment = excelsql.orderAdjustment()
    for adjustmen in orderAdjustment:
        count=count+1
        admitted = False
        studentDetail=excelsql.selectStudent(adjustmen[1])#考生信息
        majorResidue=excelsql.selectMajorAdmitted()#未完成录取的专业信息
        majorDetail=excelsql.selectAdmittedMajor(majorResidue[0][0])
        if majorDetail[0][7] is None:
            if majorDetail[0][8] is None:
                if majorDetail[0][9] is None:
                    admitted = True
                    excelsql.admitteingAdjustment(studentDetail, majorDetail, order)
                    print("插入")
                    order = order + 1
                    continue
            else:
                if excelsql.JudgingStrings(studentDetail[0][12], majorDetail[0][8]):
                    excelsql.withdrawaling(admitted, withdrawal, studentDetail)
                    withdrawal = withdrawal + 1
                    admitted = True
                    continue
                if excelsql.JudgingStrings(studentDetail[0][12], majorDetail[0][9]):
                    excelsql.withdrawaling(admitted, withdrawal, studentDetail)
                    withdrawal = withdrawal + 1
                    admitted = True
                    continue
                admitted = True
                excelsql.admitteingAdjustment(studentDetail, majorDetail, order)
                print("插入")
                order = order + 1
                continue
        else:
            if excelsql.JudgingStrings(majorDetail[0][7],studentDetail[0][11]):
                if majorDetail[0][8] is None:
                    if majorDetail[0][9] is None:
                        admitted = True
                        excelsql.admitteingAdjustment(studentDetail, majorDetail, order)
                        print("插入")
                        order = order + 1
                        continue
                else:
                    if excelsql.JudgingStrings(studentDetail[0][12], majorDetail[0][8]):
                        excelsql.withdrawaling(admitted, withdrawal, studentDetail)
                        withdrawal = withdrawal + 1
                        admitted = True
                        continue
                    if excelsql.JudgingStrings(studentDetail[0][12], majorDetail[0][9]):
                        excelsql.withdrawaling(admitted, withdrawal, studentDetail)
                        withdrawal = withdrawal + 1
                        admitted = True
                        continue
                    admitted = True
                    excelsql.admitteingAdjustment(studentDetail, majorDetail, order)
                    print("插入")
                    order = order + 1
                    continue
            excelsql.withdrawaling(admitted, withdrawal, studentDetail)
            withdrawal = withdrawal + 1
            admitted = True
            continue
        excelsql.withdrawaling(admitted,withdrawal,studentDetail)
        withdrawal = withdrawal + 1
        admitted = True
        continue

def allView():
    sql='SELECT * from admission_with_scores'
    result=json.dumps(excelsql.selectView(sql))
    return JsonResponse({'ret': 5,"data":result}, json_dumps_params={'ensure_ascii': False})

def allDepartmentDetial():
    results=excelsql.selectDepartmentDetial()
    print(results)
    detail={"msg":"学院及专业详细信息"}
    data=[]
    for result in results:
        print(result[0])

        avg=excelsql.getAVGScore(result[0])
        max=excelsql.getMAX(result[0])
        min= excelsql.getMin(result[0])
        all =[]
        single={"":result[0][0],"总体最低排位"}




def main():
    # Admission()
    # adjustment()
    # responseAdmission()
    allDepartmentDetial()



if __name__ == "__main__":
    main()
