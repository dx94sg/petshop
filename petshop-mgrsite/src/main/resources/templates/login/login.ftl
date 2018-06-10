<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>阿杜的杂货小铺</title>
    <link rel="stylesheet" href="/js/bootstrap-3.3.7-dist/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="/css/core.css" type="text/css"/>
    <script type="text/javascript" src="/js/jquery/jquery-2.1.3.js"></script>
    <script type="text/javascript" src="/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script type="text/javascript" src="/js/jquery.bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#loginForm").ajaxForm({
                success:function(data){
                    console.debug(data);
                    if(data.success){
                        window.location.href="/login/index";
                    }else{
                        $.messager.popup(data.msg);
                    }
                }});
        });
    </script>
</head>
<style type="text/css">
    .cm-container {
        margin-top: 160px;
    }
    .login {
        width: 360px;
        height: 300px;
        margin: 0px auto;
    }
</style>

<body background="/images/4.jpg">
<div class="container cm-container">
    <h3 class="text-center">阿杜的杂货小铺</h3>
    <hr/>
    <div class="login">
        <form id="loginForm" action="/login/check" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">你的名字</label>
                <input type="text" class="form-control" align="middle" name="username" id="username"
                       placeholder="YourUsername">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">你的密码</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="YourPassword">
            </div>
            <div class="form-group">
                <button class="btn  btn-primary btn-block">登录</button>
            </div>
            <a href="/login/register">没有账号吗?点此注册~</a>
        </form>
    </div>
</body>
</html>