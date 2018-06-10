package com.adu.controller;

import com.adu.mgr.domain.User;
import com.adu.mgr.service.IUserService;
import com.adu.mgr.util.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/login")
    public String login() {
        return "login/login";
    }

    @RequestMapping("/check")
    @ResponseBody
    public JSONResult check(String username, String password) {
        JSONResult jsonResult = new JSONResult();
        User user = userService.check(username, password);
        if (user == null) {
            jsonResult.mark("账号或者密码错误,请重新登陆");
        }
        return jsonResult;
    }

    //登陆成功主页面
    @RequestMapping("index")
    public String main() {
        return "main/main";
    }

    //注册页面
    @RequestMapping("register")
    public String register() {
        return "register/register";
    }

    //注册账号
    @RequestMapping("registers")
    @ResponseBody
    public JSONResult registers(String username, String password, Long tel, String email,int admin) {
        JSONResult jsonResult = new JSONResult();
        userService.register(username,password,tel,email,admin);
        return jsonResult;
    }
}
