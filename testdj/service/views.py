from django.http import HttpResponse, JsonResponse
from django.shortcuts import render
import os
from django.template import engines

from service.chatgpt import gpt

django_engine = engines['django']

html_template0 = """
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=0.3, maxmum-scale=1.0, minimum-scale=0.3">
  <title>Video Player and Chat</title>
  <style>
    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 80vh;
    }
    
    .videocontainer {
      flex: 1;
      border: 1px solid black;
      position: relative;
      width: 100%;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    
    .chat {
      flex: 1;
      height: 100%;
      border: 1px solid black;
      display: flex;
      flex-direction: column;
      overflow: auto;
      word-break: break-all;
    }
    
    .message-area {
      flex: 1;
      overflow: auto;
      padding: 10px;
    word-break: break-all;
      
    }
    
    .input-area {
      padding: 10px;
      display: flex;
    }
    
    .input-field {
      flex: 1;
      margin-right: 10px;
      
    }
    li.message {
      margin-bottom: 10px;
      padding: 5px;
      border-radius: 5px;
      background-color: #f1f1f1;
      display: flex;
      align-items: center;
       
    }
    li.message img.avatar {
  margin-right: 10px;
}

    .sender {
      font-weight: bold;
      margin-right: 5px;
    }

    .timestamp {
      font-size: 0.8em;
      color: #888;
    }

    .avatar {
      width: 30px;
      height: 30px;
      border-radius: 50%;
      margin-right: 10px;
    }
    

    li.message:nth-child(even) {
  flex-direction: row-reverse;
}
  </style>
</head>
<body>
  <div class="container">
    <div class="videocontainer">
      <!-- 在此插入你的视频播放器代码 -->
      <video width="1100" height="400" autoplay loop>
  <source src="{{a}}" type="video/mp4">
</video>
    </div>
    <div class="chat">
      <div class="message-area"> 
      <ul>
            

      <!-- 在此插入你的信息代码 -->
       {% for item  in zipdata %}
           <li class="message">  <img class="avatar" src="/static/1.jpg" alt="User 1 Avatar"><span class="sender">{{item.0}} </span></li>
           <li class="message">  <img class="avatar" src="/static/3.jpg" alt="User 2 Avatar"><span class="sender">{{item.1}} </span></li>
        {% endfor %}
      
      </ul>
      
      </div>
      <div class="input-area" method="GET">
      <form action="/2/" method="GET">
       <input  name="message" type="text" class="input-field" placeholder="输入消息">
        <button type="submit">发送</button>
        </form>
      </div>
    </div>  
  </div>

  <script>
    function sendMessage() {
      var input = document.querySelector('.input-field');
      var message = input.value;
      // 在这里执行发送消息的逻辑，例如通过Ajax将消息发送到服务器

      // 清空输入框
      input.value = '';
    }
  </script>
</body>
</html>

"""
html_template2 = """
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=0.3, maxmum-scale=1.0, minimum-scale=0.3">
  <title>Video Player and Chat</title>
  <style>
    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 80vh;
    }
    
    .video {
      flex: 1;
      height: 100%;
      border: 1px solid black;
    }
      .scrollable-window {
      width: 300px;
      height: 200px;
      overflow: auto;
      border: 1px solid black;
    }
    .chat {
      flex: 1;
      height: 100%;
      border: 1px solid black;
      display: flex;
      flex-direction: column;
    }
    p1 {
  text-align: center; /* 居中对齐文本 */
}
    .message-area {
      flex: 1;
      overflow: auto;
      padding: 10px;
      
    }
    
    .input-area {
      padding: 10px;
      display: flex;
    }
    
    .input-field {
      flex: 1;
      margin-right: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="video">
     
      
<video width="320" height="240" controls>
  <source src=src="/video" type="video/mp4">
</video>
    </div>
    <div class="chat">
      <div class="message-area">
        <!-- 在此插入消息界面的代码 -->
       

    <!-- 在此插入消息界面的代码 -->
      </div>
      <div class="input-area" method="GET">
      <form action="/2/" method="GET">
       <input name="message" type="text" class="input-field" placeholder="输入消息">
        <button type="submit">发送</button>
        </form>
      </div>
    </div>  
  </div>


</body>


</html>
"""
html_template4 = """
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=0.3, maxmum-scale=1.0, minimum-scale=0.3">
  <title>Video Player and Chat</title>
  <style>
    .container {
      display: flex;
      justify-content: center;
      
      height: 80vh;
    }
    
    .videocontainer {
      flex: 1;
      border: 1px solid black;
      position: relative;
      width: 100%;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    #videocontainer video {
      max-width: 100%;
      max-height: 100%;
    }
      .scrollable-window {
      width: 300px;
      height: 200px;
      overflow: auto;
      border: 1px solid black;
    }
    .chat {
      flex: 1;
      height: 100%;
      border: 1px solid black;
      display: flex;
      flex-direction: column;
      overflow: auto;
      word-break: break-all;
    }
    p1 {
  text-align: center; /* 居中对齐文本 */
}
    .message-area {
      flex: 1;
      overflow: auto;
      padding: 10px;
      word-break: break-all;
      
    }
    
    .input-area {
      padding: 10px;
      display: flex;
    }
    
    .input-field {
      flex: 1;
      margin-right: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="videocontainer">
      
<video width="1100" height="400" autoplay loop>
  <source src="/static/spman.mp4" type="video/mp4">
</video>
    </div>
    <div class="chat">
      <div class="message-area">
        <!-- 在此插入消息界面的代码 -->
       

    <!-- 在此插入消息界面的代码 -->
      </div>
      <div class="input-area" method="GET">
      <form action="/2/" method="GET">
       <input name="message" type="text" class="input-field" placeholder="输入消息">
        <button type="submit">发送</button>
        </form>
      </div>
    </div>  
  </div>


</body>
</html>
"""
b = []
d = []

template = django_engine.from_string(html_template0)


def listorders(request):
    # if request.post("message") == '1':
    #     message = request.POST.get('message')  # 获取前端发送的消息内容
    #     # 在这里处理接收到的消息，例如保存到数据库或执行其他逻辑
    #     # ...
    #
    #     return render(request, 'result.html')
    # else:
    #     return render(request, 'login.html')
    return HttpResponse(html_template4)


def listorderss(request):
    message1 = request.GET.get("message")
    a = gpt()
    message = [{"role": "system", "content": ""}]
    message[0]['content'] = message1
    c = a.send_request(message)
    e='/static/spman.mp4'
    f='/static/douyin.mp4'
    b.append(message1)
    d.append(c['content'])
    zipdata = zip(b, d)
    # sguvu='<p>'+message1+'</p>'
    # # if request.post("message") == '1':
    # #     message = request.POST.get('message')  # 获取前端发送的消息内容
    # #     # 在这里处理接收到的消息，例如保存到数据库或执行其他逻辑
    # #     # ...
    # #
    # #     return render(request, 'result.html')
    # # else:
    # #     return render(request, 'login.html')
    # a=html_template0+sguvu+html_template1
    rendered = template.render({'zipdata': zipdata,'a':f})

    return HttpResponse(rendered)