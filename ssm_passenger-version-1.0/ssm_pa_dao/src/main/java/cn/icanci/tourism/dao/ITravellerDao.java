package cn.icanci.tourism.dao;

import cn.icanci.tourism.domain.Traveller;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.dao
 * @Date: Created in 2020/1/18 11:36
 * @ClassAction: 旅客的dao
 */
@Repository
public interface ITravellerDao {

    /**
     * 根据orders的id查询对应的所有的 旅客
     * @param orderId 需要查询的 orders 的 id
     * @return 返回泛型为 Traveller 的 List 集合
     * @throws Exception
     */
    @Select("select * from ssm_pa_traveller where id in (select travellerId from ssm_pa_order_traveller where orderId = #{orderId})")
    List<Traveller> findByOrdersId(Integer orderId) throws Exception;
}
