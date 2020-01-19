package cn.icanci.tourism.dao;

import cn.icanci.tourism.domain.Member;
import cn.icanci.tourism.domain.Orders;
import cn.icanci.tourism.domain.Product;
import org.apache.ibatis.annotations.*;
import org.aspectj.weaver.ast.Or;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.dao
 * @Date: Created in 2020/1/18 9:19
 * @ClassAction:
 */
@Repository
public interface IOrdersDao {
    /**
     * 查询所有的Orders
     * @return 返回反省为 Orders 的 List 集合
     */
    @Select("select * from ssm_pa_orders")
    @Results({
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "orderNum",column = "orderNum"),
            @Result(property = "orderTime",column = "orderTime"),
            @Result(property = "orderStatus",column = "orderStatus"),
            @Result(property = "peopleCount",column = "peopleCount"),
            @Result(property = "payType",column = "payType"),
            @Result(property = "orderDesc",column = "orderDesc"),
            @Result(property = "product",column = "productId",javaType = Product.class,one=@One(select = "cn.icanci.tourism.dao.IProductDao.findById")),
            @Result(property = "travellers",column = "id",javaType = java.util.List.class,many = @Many(select = "cn.icanci.tourism.dao.ITravellerDao.findByOrdersId"))
    })
    List<Orders> findAll() throws Exception;

    /**
     * 根据id 查询具体的 Orders 对象
     * @param id 需要查询的 id
     * @return 返回查询到的 id 对象
     */
    @Select("select * from ssm_pa_orders where id = #{id}")
    @Results({
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "orderNum",column = "orderNum"),
            @Result(property = "orderTime",column = "orderTime"),
            @Result(property = "orderStatus",column = "orderStatus"),
            @Result(property = "peopleCount",column = "peopleCount"),
            @Result(property = "payType",column = "payType"),
            @Result(property = "orderDesc",column = "orderDesc"),
            @Result(property = "productId",column = "productId"),
            @Result(property = "memberId",column = "memberId"),
            @Result(property = "product",column = "productId",javaType = Product.class,one=@One(select = "cn.icanci.tourism.dao.IProductDao.findById")),
            @Result(property = "member",column = "memberId",javaType = Member.class,one = @One(select = "cn.icanci.tourism.dao.IMemberDao.findById")),
            @Result(property = "travellers",column = "id",javaType = java.util.List.class,many = @Many(select = "cn.icanci.tourism.dao.ITravellerDao.findByOrdersId"))
    })
    Orders findById(Integer id);

    /**
     * 保存一个订单的信息
     * @param orders 需要保存的订单的对象信息
     */
    @Insert("insert into ssm_pa_orders (orderNum,orderTime,peopleCount,orderDesc,payType,orderStatus,productId,memberId) values (#{orderNum},#{orderTime},#{peopleCount},#{orderDesc},#{payType},#{orderStatus},#{productId},#{memberId})")
    void save(Orders orders);

    /**
     * 更新的数据
     * @param orders 需要更新的对象
     */
    @Update("update ssm_pa_orders set orderNum=#{orderNum},peopleCount=#{peopleCount},orderDesc=#{orderDesc},payType=#{payType},orderStatus=#{orderStatus},productId=#{productId},memberId=#{memberId} where id = #{id} ")
    void update(Orders orders);

}
