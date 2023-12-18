"""
URL configuration for testdj project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import path
from common import views
from common import downexecl
from common.views import listorders

urlpatterns = [
    path("admin/", admin.site.urls),
    path("1/", listorders),  # 去往首页的路径
    path("2/", views.signout),  # 登出处理
    path("3/", views.responseStudent),  # 查询所有student信息
    path("4/", views.responseAdmission),  # 所有已录取学生信息
    path("5/", views.responseAdjustment),  # 调剂队列
    path("6/", views.responseMajor),  # 所有专业招生计划
    path("7/", views.responseWithdrawal),  # 所有退档学生信息
    path("8/", views.allView),  # 根据学院,专业排名的视图
    path("8/", views.allDepartmentDetial),  # 根据学院,专业排名的视图
    path("login/", views.signin),
    path("download/", downexecl.download_zip)
]
