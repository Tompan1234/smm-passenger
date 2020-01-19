package cn.icanci.tourism.controller;

import cn.icanci.tourism.dao.IUserDao;
import cn.icanci.tourism.domain.Product;
import cn.icanci.tourism.domain.Role;
import cn.icanci.tourism.domain.UserInfo;
import cn.icanci.tourism.service.IUserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.controller
 * @Date: Created in 2020/1/18 16:17
 * @ClassAction: User的控制
 */
@Controller
@Transactional
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1") Integer page,@RequestParam(name = "pageSize",required = true,defaultValue = "5") Integer pageSize){
        ModelAndView modelAndView = new ModelAndView();
        List<UserInfo> userList = userService.findAll(page,pageSize);
        //PageInfo 就是一个分页的 Bean
        PageInfo pageInfo = new PageInfo(userList);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("user-list");
        return modelAndView ;
    }
    @RequestMapping("/save")
    public String save(UserInfo user){
        userService.save(user);
        return "redirect:findAll.do";
    }

    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name = "id",required = true) Integer id){
        ModelAndView modelAndView = new ModelAndView();
        UserInfo userInfo = userService.findById(id);
        modelAndView.addObject("user",userInfo);
        modelAndView.setViewName("user-show");
        return modelAndView;
    }

    /**
     * 查询用户以及用户可以添加的角色
     */
    @RequestMapping("/findUserByIdAndAllRole.do")
    public ModelAndView findUserByIdAndAllRole(@RequestParam(name = "id",required = true) Integer id){
        ModelAndView modelAndView = new ModelAndView();
        //user-role-add
        //1.根据用户id查询用户
        UserInfo userInfo = userService.findById(id);
        //2.根据用户id查询可以添加的角色
        List<Role> otherRoles = userService.findOtherRoles(id);
        modelAndView.addObject("user",userInfo);
        modelAndView.addObject("roleList",otherRoles);
        modelAndView.setViewName("user-role-add");
        return modelAndView;
    }

    //addRoleToUser

    @RequestMapping("addRoleToUser.do")
    public String addRoleToUser(@RequestParam(name = "userId",required=true) Long id, @RequestParam(name = "ids",required = true) Long ... roleIds){
        userService.addRoleToUser(id,roleIds);
        return "redirect:findAll.do";
    }

    @RequestMapping("/edit.do")
    public ModelAndView edit(@RequestParam(name = "id",required = true) Integer id){
        ModelAndView modelAndView = new ModelAndView();
        UserInfo user =  userService.findById(id);
        modelAndView.addObject("user" , user);
        modelAndView.addObject("id" , user.getId());
        modelAndView.setViewName("user-edit");
        return modelAndView;
    }

    //update
    @RequestMapping("/update.do")
    public String edit(UserInfo user){
        System.out.println(user);
        userService.update(user);
        return "redirect:findAll.do";
    }
}
