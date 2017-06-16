package controller;


import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SimpleController {

    /**
     * /admin 需要管理员身份
     * /login 用户登录action
     * /logout 用户登出action，前提是已经登录
     * /create 需要权限user:create
     *
     */




    @RequestMapping("/login")
    public String login(String username, String password){
        AuthenticationToken token = new UsernamePasswordToken(username,password);

        try{
            SecurityUtils.getSubject().login(token);
        }catch (UnknownAccountException e){
            return "exist";
        }catch (AuthenticationException e1){
            System.out.println(e1.getMessage());
        }

        if (SecurityUtils.getSubject().isAuthenticated()){
            System.out.println("success");
            return "success";
        }
        else {
            System.out.println("failed");
            return "unauthorized";
        }
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
