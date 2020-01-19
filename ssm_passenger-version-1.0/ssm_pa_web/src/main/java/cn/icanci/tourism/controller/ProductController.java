package cn.icanci.tourism.controller;

import cn.icanci.tourism.domain.Product;
import cn.icanci.tourism.service.IProductService;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Role;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.controller
 * @Date: Created in 2020/1/17 15:34
 * @ClassAction:  Product的控制器
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private IProductService productService;

    /**
     * 查询所有的产品
     * @return 返回 modelAndView 对象
     * @throws Exception 可能出现的异常
     */
    @RequestMapping("/findAll.do")
    @RolesAllowed({"ROLE_Admin","ROLE_USER"})
    public ModelAndView findAllProduct(@RequestParam(name="page",required = true,defaultValue = "1") Integer page, @RequestParam(name = "pageSize",required = true,defaultValue = "5") Integer pageSize) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        List<Product> productList = productService.findAllProduct(page,pageSize);
        //PageInfo 就是一个分页的 Bean
        PageInfo pageInfo = new PageInfo(productList);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("product-list2");
        return modelAndView;
    }

    /**
     * 保存一个商品 产品添加
     * @param product 需要添加的产品对象
     * @throws Exception 可能会抛出异常
     */
    @RequestMapping("/save.do")
    public String saveProduct(Product product) throws Exception{
        productService.saveProduct(product);
        return "redirect:findAll.do";
    }

    @RequestMapping("/delete.do")
    public String delete(@RequestParam(name = "id",required = true) Long id) throws Exception{
        productService.delete(id);
        return "redirect:findAll.do";
    }

    @RequestMapping("/edit.do")
    public ModelAndView edit(@RequestParam(name = "id",required = true) Integer id) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        Product product = productService.findById(id);
        modelAndView.addObject("product" , product);
        modelAndView.addObject("id" , product.getId());
        modelAndView.setViewName("product-edit");
        return modelAndView;
    }

    @RequestMapping("/update.do")
    public String edit(Product product){
        System.out.println(product);
        productService.update(product);
        return "redirect:findAll.do";
    }
}
