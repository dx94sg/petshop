<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>阿杜的杂货小铺</title>
    <link rel="stylesheet" href="/js/bootstrap-3.3.7-dist/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="/css/core.css" type="text/css"/>
    <script type="text/javascript" src="/js/jquery/jquery-2.1.3.js"></script>
    <script type="text/javascript" src="/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery-validation/jquery.validate.js"></script>
    <script type="text/javascript" src="/js/jquery.bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript">

        // 手机号码验证
        jQuery.validator.addMethod("isMobile", function (value, element) {
            var length = value.length;
            var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
            return this.optional(element) || (length == 11 && mobile.test(value));
        }, "请正确填写手机号码");

        $(function () {
            //表单验证
            $("#registerForm").validate({
                rules: {
                    username: {
                        required: true,
                        rangelength: [4, 16],
                        /*remote: "/checkUsername"*/
                    }
                    ,
                    password: {
                        required: true,
                        rangelength: [4, 16]
                    }
                    ,
                    repassword: {
                        required: true,
                        equalTo: "#password"
                    }
                    ,
                    tel: {
                        required: true,
                        isMobile: true
                    }
                    ,
                    email: {
                        required: true,
                        email: true
                    }
                }, messages: {
                    username: {
                        required: "用户名不能为空",
                        rangelength: "用户名的长度在{0}到{1}之间",
                        /*remote: "骚年~账号已经存在了,请换一个试试"*/
                    },
                    password: {
                        required: "密码不能为空",
                        rangelength: "密码的长度在{0}到{1}之间"
                    },
                    repassword: {
                        required: "密码不能为空",
                        equalTo: "两次输入的密码必须相同"
                    },
                    tel: {
                        required: "手机号码不能为空",
                        isMobile: "请输入正确的手机号"
                    },
                    email: {
                        required: "密码不能为空",
                        email: "请输入正确的邮箱"
                    }
                },
                //校验文本失败样式
                errorClass: "text-danger",
                //校验失败,文本框红色高亮
                highlight: function (inputEl, errorClass) {
                    $(inputEl).closest(".form-group").addClass("has-error");
                },
                //校验成功,取消文本框红色高亮
                unhighlight: function (inputEl, errorClass) {
                    $(inputEl).closest(".form-group").removeClass("has-error").addClass("has-success");
                }
            })
            //提交表单
            $("#registerForm").ajaxForm(function (data) {
                if ($("#username").val == null || $("#password").val == null || $("#repassword").val == null
                        || $("#tel").val == null || $("#email").val == null) {
                    return false;
                }
                if (data.success) {
                    $.messager.confirm("提示", "恭喜你注册成功,快去登录吧~", function () {
                        window.location.href = "/login/login";
                    })
                } else {
                    $.messager.popup(data.msg);
                }
            })
        })

    </script>
</head>
<style type="text/css">
    .cm-container {
        margin-top: 60px;
    }

    .login {
        width: 360px;
        height: 300px;
        margin: 0px auto;
    }
</style>

<body background="/images/register.jpg">
<div class="container cm-container">
    <h3 class="text-center">欢迎注册~</h3>
    <hr/>
    <div class="login">
        <form id="registerForm" action="/login/registers" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">你的名字</label>
                <input type="text" class="form-control" align="middle" name="username" id="username">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">你的密码</label>
                <input type="password" class="form-control" id="password" name="password">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">请确认密码</label>
                <input type="password" class="form-control" id="repassword" name="repassword">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">你的手机</label>
                <input type="text" class="form-control" id="tel" name="tel">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">你的邮箱</label>
                <input type="text" class="form-control" id="email" name="email">
                <input type="hidden" class="form-control" id="admin" name="admin" value="0">
            </div>
            <div class="form-group">
                <button class="btn  btn-primary btn-block">点击注册</button>
            </div>
            <a href="/login/login">想起你的账号啦?快去登录吧~</a>
        </form>
    </div>
</body>
</html>