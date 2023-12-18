from django.db import models

# Create your models here.
class ALLExaminee(models.Model):
    CandidateID = models.IntegerField()
    # 学生名称
    Name = models.CharField(max_length=8)

    # 学生电话考生号，姓名，总分，全省排位，填报的 6个志愿(6个志愿可能未填满)，是否服从调剂、体检、外语要求等信息。
    Phonenumber = models.CharField(max_length=11)

    # 总分
    Totalscore = models.CharField(max_length=200)
    # 全省排位
    Ranking = models.IntegerField()
    #调剂
    adjustment=models.CharField(max_length=10)
    #体检
    Physicalexamination=models.CharField(max_length=10)
    #外语要求
    Foreignlanguagerequirements=models.CharField(max_length=10)
    #六个志愿
    Firstvolunteer = models.CharField(max_length=200)
    Secondvolunteer = models.CharField(max_length=200)
    Thirdvolunteer = models.CharField(max_length=200)
    Fourthvolunteer = models.CharField(max_length=200)
    Fifthvolunteer = models.CharField(max_length=200)
    Sixthvolunteer = models.CharField(max_length=200)

    objects = models.Manager()