from django.http import HttpResponse
from django.http import JsonResponse
import json

from Student.models import ALLExaminee
from django.db import models
def studentAllSql(request):
    qs=ALLExaminee.objects.all()
    retlist = list(qs.values())
    return JsonResponse({'ret': 0, 'retlist': retlist})