package cn.icanci.tourism.controller;

import cn.icanci.tourism.domain.Orders;
import cn.icanci.tourism.service.IOrdersService;
import com.github.pagehelper.PageInfo;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.controller
 * @Date: Created in 2020/1/18 9:15
 * @ClassAction: Orders 的 控制器
 */
@Controller
@RequestMapping("/orders")
public class OrdersController {

    @Autowired
    private IOrdersService ordersService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1") Integer page,@RequestParam(name = "pageSize",required = true,defaultValue = "5") Integer pageSize) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        List<Orders> orderList =  ordersService.findAll(page,pageSize);
        //PageInfo 就是一个分页的 Bean
        PageInfo pageInfo = new PageInfo(orderList);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("orders-page-list");
        return  modelAndView;
    }

    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam( name = "id" ,required = true)Integer id){
        ModelAndView modelAndView = new ModelAndView();
        Orders orders= ordersService.findById(id);
        System.out.println(orders);
        modelAndView.addObject("orders",orders);
        modelAndView.setViewName("orders-show");
        return modelAndView;
    }

    @RequestMapping("/save.do")
    public String save(Orders order){
        System.out.println(order);
        order.setOrderTime(new Date());
        ordersService.save(order);
        System.out.println(order);

        return "redirect:findAll.do";
    }

    //orders-edit
    @RequestMapping("/edit.do")
    public ModelAndView edit(Integer id){
        ModelAndView modelAndView = new ModelAndView();
        Orders order = ordersService.findById(id);
        modelAndView.addObject("order" , order);
        modelAndView.addObject("id" ,order.getId());
        modelAndView.setViewName("orders-edit");
        return modelAndView;
    }

    @RequestMapping("/update.do")
    public String update(Orders orders){
        ordersService.update(orders);
        return "redirect:findAll.do";
    }

}
