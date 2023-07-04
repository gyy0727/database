import os

from django.test import TestCase

# Create your tests here.
from service.chatgpt import gpt

import subprocess

# 运行命令
command = 'cd'
process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)

# 读取输出和错误日志
while True:
    output = process.stdout.readline().decode('utf-8').strip()
    error = process.stderr.readline().decode('utf-8').strip()

    # 输出日志
    if output:
        print('Output:', output)
    if error:
        print('Error:', error)

    # 判断进程是否结束
    if process.poll() is not None:
        break

# if __name__ == '__main__':
#     # a = gpt()
#     # message=[{"role": "system", "content": "100+100"}]
#     # message[0]['content']="200"
#     # # b= a.send_request(message)
#     # print(message[0]["content"])
#     # print(os.getcwd())
#     os.system(" pip install os")