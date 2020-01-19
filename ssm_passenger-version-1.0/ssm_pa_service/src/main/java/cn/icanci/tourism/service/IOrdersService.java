package cn.icanci.tourism.service;

import cn.icanci.tourism.domain.Orders;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service
 * @Date: Created in 2020/1/18 9:16
 * @ClassAction: Orders 的顶层业务接口
 */
public interface IOrdersService {
    /**
     * 查询所有的Orders
     * @return 返回反省为 Orders 的 List 集合
     */
    List<Orders> findAll(int page,int pageSize) throws Exception;

    /**
     * 根据id 查询具体的 Orders 对象
     * @param id 需要查询的 id
     * @return 返回查询到的 id 对象
     */
    Orders findById(Integer id);

    /**
     * 保存一个订单的信息
     * @param orders 需要保存的订单的对象信息
     */
    void save(Orders orders);

    /**
     * 更新的数据
     * @param orders 需要更新的对象
     */
    void update(Orders orders);
}
