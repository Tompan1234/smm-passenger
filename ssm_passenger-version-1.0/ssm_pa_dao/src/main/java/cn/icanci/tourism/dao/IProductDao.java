package cn.icanci.tourism.dao;

import cn.icanci.tourism.domain.Product;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.dao
 * @Date: Created in 2020/1/17 14:27
 * @ClassAction: Porduct CRUD等等 的操作
 */
@Repository
public interface IProductDao {
    /**
     * 查询所有的 商品 信息
     * @return  返回泛型为 Product 的 List 集合
     */
    @Select("select id,productNum,productName,cityName,departureTime,productPrice,productDesc,productStatus from ssm_pa_product")
     List<Product> findAllProduct() throws Exception;

    /**
     * 保存一个 商品的信息
     * @param product 需要保存的商品的对象
     */
    @Insert("insert into ssm_pa_product (productNum,productName,cityName,departureTime,productPrice,productDesc,productStatus) values (#{productNum},#{productName},#{cityName},#{departureTime},#{productPrice},#{productDesc},#{productStatus})")
    void saveProduct(Product product);

    /**
     * 根据 id 查询一个产品
     * @param id 需要查询的 产品id
     * @return 返回一个 Product 对象
     */
    @Select("select id,productNum,productName,cityName,departureTime,productPrice,productDesc,productStatus from ssm_pa_product where id = #{id}")
    Product findById(Integer id) throws Exception;

    /**
     * 删除一个对象
     * @param id
     */
    @Delete("delete from ssm_pa_product where id = #{id}")
    void delete(Long id);

    /**
     * 更新信息
     * @param product 需要更新的对象
     */
    @Update("update ssm_pa_product set productNum=#{productNum},productName=#{productName},cityName=#{cityName},departureTime=#{departureTime},productPrice=#{productPrice},productDesc=#{productDesc},productStatus=#{productStatus} where id = #{id}")
    void update(Product product);
}
