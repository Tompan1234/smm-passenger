package cn.icanci.tourism.service.impl;

import cn.icanci.tourism.dao.IProductDao;
import cn.icanci.tourism.domain.Product;
import cn.icanci.tourism.service.IProductService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service.impl
 * @Date: Created in 2020/1/17 14:36
 * @ClassAction: Product 服务层接口的实现类
 */
@Service
@Transactional
public class ProductServiceImpl implements IProductService {

    @Autowired
    private IProductDao productDao;
    @Override
    public List<Product> findAllProduct(int page,int pageSize) throws Exception {
        //参数 pageNum 是 页码值,pageSize 是每页显示的条数
        PageHelper.startPage(page,pageSize);
        return productDao.findAllProduct();
    }

    @Override
    public void saveProduct(Product product) {
        productDao.saveProduct(product);

    }

    @Override
    public Product findById(Integer id) throws Exception {
        return productDao.findById(id);
    }

    @Override
    public void delete(Long id) {
        productDao.delete(id);
    }

    @Override
    public void update(Product product) {
        System.out.println(product);
        productDao.update(product);
    }
}
