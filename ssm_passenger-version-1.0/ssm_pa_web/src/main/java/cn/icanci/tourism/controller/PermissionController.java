package cn.icanci.tourism.controller;

import cn.icanci.tourism.domain.Orders;
import cn.icanci.tourism.domain.Permission;
import cn.icanci.tourism.service.IPermissionService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.controller
 * @Date: Created in 2020/1/18 19:01
 * @ClassAction:资源权限的控制器
 */
@Controller
@RequestMapping("/permission")
public class PermissionController {

    @Autowired
    private IPermissionService permissionService;
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1") Integer page,@RequestParam(name = "pageSize",required = true,defaultValue = "5") Integer pageSize) {
        ModelAndView modelAndView = new ModelAndView();
        List<Permission> permissionList = permissionService.findAll(page,pageSize);
        //PageInfo 就是一个分页的 Bean
        PageInfo pageInfo = new PageInfo(permissionList);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("permission-list");
        return modelAndView;

    }
    /**
     * 保存一个权限
     * @param permission 需要添加的产品对象
     * @throws Exception 可能会抛出异常
     */
    @RequestMapping("/save.do")
    public String saveProduct(Permission permission) {
        permissionService.save(permission);
        return "redirect:findAll.do";
    }
}
