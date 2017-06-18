package controller;


import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SimpleController {

    /**
     * /admin 需要管理员身份
     * /login 用户登录action
     * /logout 用户登出action，前提是已经登录
     * /create 需要权限user:create
     *
     */




//    @RequestMapping("/login")
//    public String login(String username, String password){
//        AuthenticationToken token = new UsernamePasswordToken(username,password);
//
//        try{
//            SecurityUtils.getSubject().login(token);
//        }catch (UnknownAccountException e){
//            return "exist";
//        }catch (AuthenticationException e1){
//            System.out.println(e1.getMessage());
//        }
//
//        if (SecurityUtils.getSubject().isAuthenticated()){
//            System.out.println("success");
//            return "success";
//        }
//        else {
//            System.out.println("failed");
//            return "unauthorized";
//        }
//    }

    @RequestMapping(value = "/login")
    public String showLoginForm(HttpServletRequest req, Model model) {
        String exceptionClassName = (String)req.getAttribute("shiroLoginFailure");
        String error = null;
        if(UnknownAccountException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        } else if(IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        } else if(exceptionClassName != null) {
            error = "其他错误：" + exceptionClassName;
        }
        model.addAttribute("error", error);
        return "login";
    }

//    @RequestMapping("/logout")
//    public String logout(){
//        SecurityUtils.getSubject().logout();
//        return "redirect:index.jsp";
//    }


    @RequestMapping("/create")
    public String create(){
        return "create";
    }

}
