package cn.icanci.tourism.controller;

import cn.icanci.tourism.domain.Permission;
import cn.icanci.tourism.domain.Role;
import cn.icanci.tourism.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
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
 * @Date: Created in 2020/1/18 18:03
 * @ClassAction: 角色控制器
 */
@Controller
@Transactional
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private IRoleService roleService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() {
        ModelAndView modelAndView = new ModelAndView();
        List<Role> roleList = roleService.findAll();
        modelAndView.addObject("roleList", roleList);
        modelAndView.setViewName("role-list");
        return modelAndView;
    }

    @RequestMapping("/save.do")
    public String save(Role role) {
        roleService.save(role);
        return "redirect:findAll.do";
    }

    //findUserByIdAndAllPermission
    //根据roleId 查询 role 并查询出可以添加的权限
    @RequestMapping("/findUserByIdAndAllPermission.do")
    public ModelAndView findUserByIdAndAllPermission(@RequestParam(name = "id",required = true) Integer roleId){
        ModelAndView modelAndView = new ModelAndView();
        //根据 roleId 查询 role
        Role role = roleService.findById(roleId);
        //根据 roleI的 查询可以添加的权限
        List<Permission> permissionList =  roleService.findPermission(roleId);
        modelAndView.addObject("role",role);
        modelAndView.addObject("permissionList",permissionList);
        modelAndView.setViewName("role-permission-add");
        return modelAndView;
    }

    //给角色添加 id
    @RequestMapping("/addPermissionToRole.do")
    public String addPermissionToRole(@RequestParam(name = "roleId",required = true) Long roleId,@RequestParam(name="ids",required = true) Long ... permIds){
        roleService.addPermissionToRole(roleId,permIds);
        return "redirect:findAll.do";
    }
}
