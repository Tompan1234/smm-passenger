package cn.icanci.tourism.dao;

import cn.icanci.tourism.domain.Permission;
import cn.icanci.tourism.domain.Role;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.dao
 * @Date: Created in 2020/1/18 15:23
 * @ClassAction: 获取用户角色
 */
@Repository
public interface IRolesDao {

    /**
     * 根据 用户的id  获得操作角色
     *
     * @param id 需要获取角色的 user  的 id
     * @return 返回泛型为 Role 的 List 集合
     */
    @Select("select * from ssm_pa_role where id in (select roleId from ssm_pa_users_role where userId = #{id})")
    @Results(value = {
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "id", column = "id"),
            @Result(property = "roleName", column = "roleName"),
            @Result(property = "roleDesc", column = "roleDesc"),
            @Result(property = "permissions",column = "id",javaType = java.util.List.class,many = @Many(select = "cn.icanci.tourism.dao.IPermissionDao.findAllPermissionByRoleId"))
    })
    List<Role> findAllRoleByUserId(Integer id);

    /**
     * 查询所有的角色
     * @return 返回泛型为 Role 的 List 集合
     */
    @Select("select * from ssm_pa_role")
    List<Role> findAll();

    /**
     * 保存一个角色信息
     * @param role 需要保存信息的 role 对象
     */
    @Insert("insert into ssm_pa_role (roleName,roleDesc) values (#{roleName},#{roleDesc})")
    void save(Role role);

    /**
     * 根据 roleId 查询 role
     * @param roleId  需要查询的 roleID
     * @return 返回 Role对象
     */
    @Select("select * from ssm_pa_role where id = #{roleId}")
    Role fingById(Integer roleId);

    /**
     * 根据 roleI的 查询可以添加的权限
     * @param roleId
     * @return
     */
    @Select("select * from ssm_pa_permission where id not in (select permissionId from ssm_pa_role_permission where roleId = #{roleId})")
    List<Permission> findPermission(Integer roleId);

    /**
     *
     * @param roleId
     * @param permissionId
     * @return
     */
    @Insert("insert into ssm_pa_role_permission (roleId,permissionId) values (#{roleId},#{permissionId})")
   void addPermissionToRole(@Param("roleId") Long roleId,@Param("permissionId")Long permissionId);
}
