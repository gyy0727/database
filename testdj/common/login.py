from django.http import HttpResponse

from service.views import django_engine

html_template0 ="""<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            padding: 10%;
        }

        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="password"] {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>用户登录</h1>
        <form action="login/" method="post">
            <label for="username">用户名:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">密码:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="登录">
        </form>
    </div>
</body>
</html>"""
# 导入render，一般django默认
from django.shortcuts import render

def user_login(request):
    template = django_engine.from_string(html_template0)
    rendered = template.render()
    # if request.post("message") == '1':
    #     message = request.POST.get('message')  # 获取前端发送的消息内容
    #     # 在这里处理接收到的消息，例如保存到数据库或执行其他逻辑
    #     # ...
    #
    #     return render(request, 'result.html')
    # else:
    return render(request, 'login.html')
    # return HttpResponse(rendered)

