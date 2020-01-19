package cn.icanci.tourism.controller;

import cn.icanci.tourism.domain.SysLog;
import cn.icanci.tourism.service.ISysLogService;
import com.github.pagehelper.PageInfo;
import jdk.internal.org.objectweb.asm.MethodVisitor;
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
 * @Date: Created in 2020/1/18 22:55
 * @ClassAction:
 */
@Controller
@RequestMapping("/sysLog")
public class SysLogController {
    @Autowired
    private ISysLogService sysLogService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1") Integer page, @RequestParam(name = "pageSize",required = true,defaultValue = "5") Integer pageSize){
        ModelAndView modelAndView = new ModelAndView();
        List<SysLog> sysLogsList =sysLogService.findAll(page,pageSize);
        //PageInfo 就是一个分页的 Bean
        PageInfo pageInfo = new PageInfo(sysLogsList);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("syslog-list");
        return modelAndView;
    }
}
