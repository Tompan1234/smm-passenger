package cn.icanci.tourism.dao;

import cn.icanci.tourism.domain.Member;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.dao
 * @Date: Created in 2020/1/18 11:29
 * @ClassAction: 查询 member
 */
@Repository
public interface IMemberDao {
    /**
     * 根据id 查询 Member
     * @param id 需要查询的id
     * @return 返回一个Member对象
     */
    @Select("select * from ssm_pa_member where id = #{id}")
    Member findById(Integer id);
}
