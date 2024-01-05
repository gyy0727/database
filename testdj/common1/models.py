# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class students(models.Model):
    考生号= models.CharField(primary_key=True, max_length=255)
    姓名 = models.CharField(max_length=255, blank=True, null=True)
    专业组号 = models.IntegerField(blank=True, null=True)
    投档成绩 = models.IntegerField(blank=True, null=True)
    服从调剂 = models.CharField(max_length=255, blank=True, null=True)
    专业志愿1 = models.CharField(max_length=255, blank=True, null=True)
    专业志愿2 = models.CharField(max_length=255, blank=True, null=True)
    专业志愿3 = models.CharField(max_length=255, blank=True, null=True)
    专业志愿4 = models.CharField(max_length=255, blank=True, null=True)
    专业志愿5 = models.CharField(max_length=255, blank=True, null=True)
    专业志愿6 = models.CharField(max_length=255, blank=True, null=True)
    外语语种 = models.CharField(max_length=255, blank=True, null=True)
    体检筛选备注 = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'students'

    def __str__(self):
        return self.姓名  # 或者任何您希望显示的字段
class adjustment(models.Model):
    调剂位次 = models.AutoField(primary_key=True)
    考生号= models.CharField(max_length=255, blank=True, null=True)
    姓名 = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'adjustment'
class major(models.Model):
    专业组号 = models.IntegerField()
    专业代号 = models.CharField(primary_key=True, max_length=10)
    专业名称 = models.CharField(max_length=255)
    学院名称 = models.CharField(max_length=255)
    招生计划数= models.IntegerField()
    专业备注 = models.CharField(max_length=255, blank=True, null=True)
    办学地点 = models.CharField(max_length=255, blank=True, null=True)
    外语语种 = models.CharField(max_length=50, blank=True, null=True)
    体检受限1 = models.CharField(max_length=100, blank=True, null=True)
    体检受限2 = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'major'
#students, models.DO_NOTHING, db_column='考生号',

class admission(models.Model):
    录取位次 = models.CharField(primary_key=True, max_length=255)
    考生号 = models.CharField(max_length=255, blank=True, null=True)
    姓名 = models.CharField(max_length=255, blank=True, null=True)
    专业组号 = models.IntegerField(blank=True, null=True)
    专业代号 = models.ForeignKey(major, models.DO_NOTHING, db_column='专业代号', blank=True, null=True)
    专业名称 = models.CharField(max_length=255, blank=True, null=True)
    学院名称 = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'admission'


class withdrawal(models.Model):
    退档位次= models.AutoField(primary_key=True)
    考生号= models.CharField(max_length=255, blank=True, null=True)
    姓名 = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'withdrawal'




class admitted(models.Model):
    专业代号 =models.CharField(max_length=10, primary_key=True)
    待录取人数= models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'admitted'
