package cn.icanci.tourism.dao;

import cn.icanci.tourism.domain.Permission;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.dao
 * @Date: Created in 2020/1/18 17:24
 * @ClassAction:
 */
@Repository
public interface IPermissionDao {

    /**
     * 查找 对应id的 多个权限
     * @param id 需要查询权限的id
     * @return 返回泛型为 Permission 的 List 集合
     */
    @Select("select * from ssm_pa_permission where id in (select permissionId from ssm_pa_role_permission where roleId  = #{id})")
    List<Permission> findAllPermissionByRoleId(Integer id);


    /**
     *  查询所有的权限
     * @return 查询所有的权限
     */
    @Select("select * from ssm_pa_permission")
    List<Permission> findAll();

    /**
     * 添加一个权限
     * @param permission 需要添加的权限的对象
     */
    @Insert("insert into ssm_pa_permission (permissionName,url) values (#{permissionName},#{url})")
    void save(Permission permission);
}
