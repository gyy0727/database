from django.contrib import admin

# Register your models here.
from django.contrib import admin

from .models import students, adjustment, admission ,withdrawal,major,admitted



from django.contrib import admin

# Register your models here.


# 在admin中注册绑定
class studentsAdmin(admin.ModelAdmin):
    list_per_page = 100   #每页显示10条记录
    search_fields = ['考生号']
    list_display = ['考生号', '姓名', '专业组号', '投档成绩','服从调剂','专业志愿1','专业志愿2','专业志愿3','专业志愿4','专业志愿5','专业志愿6','外语语种','体检筛选备注']  #在列表视图中显示的字段


class adjustmentAdmin(admin.ModelAdmin):
    list_per_page = 100
    search_fields = ['调剂位次']
    list_display = ['调剂位次', '考生号', '姓名']

class admissionAdmin(admin.ModelAdmin):
    list_per_page = 100   #每页显示10条记录
    search_fields = ['录取位次']
    list_display = ['录取位次', '考生号', '姓名', '专业组号','专业代号','专业名称','学院名称']  #在列表视图中显示的字段


class withdrawalAdmin(admin.ModelAdmin):
    list_per_page = 100
    search_fields = ['考生号']
    list_display = ['退档位次', '考生号', '姓名']

class majorAdmin(admin.ModelAdmin):
    list_per_page = 100   #每页显示10条记录
    search_fields = ['专业代号']
    list_display = ['专业组号', '专业代号', '专业名称', '学院名称','招生计划数','专业备注','办学地点','外语语种','体检受限1','体检受限2']  #在列表视图中显示的字段


class admittedAdmin(admin.ModelAdmin):
    list_per_page = 100
    search_fields = ['专业代号']
    list_display = ['专业代号', '待录取人数']
admin.site.register(students,studentsAdmin)
admin.site.register(major,majorAdmin)
admin.site.register(admitted,admittedAdmin)
admin.site.register(admission,admissionAdmin)
admin.site.register(withdrawal,withdrawalAdmin)
admin.site.register(adjustment,adjustmentAdmin)