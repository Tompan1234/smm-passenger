package cn.icanci.tourism.service;

import cn.icanci.tourism.domain.Product;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service
 * @Date: Created in 2020/1/17 14:33
 * @ClassAction:  Product 的服务层 Service
 */
public interface IProductService {
    /**
     * * 查询所有的 商品 信息
     * @return  返回泛型为 Product 的 List 集合
     */
    List<Product> findAllProduct(int page,int pageSize) throws Exception;
    /**
     * 保存一个 商品的信息
     * @param product 需要保存的商品的对象
     */
    void saveProduct(Product product) throws Exception;


    /**
     * 根据 id 查询一个产品
     * @param id 需要查询的 产品id
     * @return 返回一个 Product 对象
     */
    Product findById(Integer id) throws Exception;

    /**
     * 删除一个对象
     * @param id
     */
    void delete(Long id);

    /**
     * 更新信息
     * @param product 需要更新的对象
     */
    void update(Product product);
}
