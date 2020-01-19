package cn.icanci.tourism.service;

import cn.icanci.tourism.domain.Permission;
import cn.icanci.tourism.domain.Role;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service
 * @Date: Created in 2020/1/18 18:42
 * @ClassAction: 角色的业务层
 */
public interface IRoleService {
    /**
     * 查询所有的角色
     * @return 返回泛型为 Role 的 List 集合
     */
    List<Role> findAll();


    /**
     * 保存一个角色信息
     * @param role 需要保存信息的 role 对象
     */
    void save(Role role);

    /**
     * 根据 roleId 查询 role
     * @param roleId  需要查询的 roleID
     * @return 返回 Role对象
     */
    Role findById(Integer roleId);

    /**
     * 根据 roleI的 查询可以添加的权限
     * @param roleId
     * @return
     */
    List<Permission> findPermission(Integer roleId);

    /**
     *
     * @param id
     * @param permId
     */
    void addPermissionToRole(Long id,Long ... permId);
}
