package cn.icanci.tourism.service.impl;

import cn.icanci.tourism.dao.IRolesDao;
import cn.icanci.tourism.domain.Permission;
import cn.icanci.tourism.domain.Role;
import cn.icanci.tourism.service.IRoleService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service.impl
 * @Date: Created in 2020/1/18 18:43
 * @ClassAction: 角色业务层实现
 */
@Service
@Transactional
public class RoleServiceImpl  implements IRoleService{

    @Autowired
    private IRolesDao rolesDao;

    @Override
    public List<Role> findAll() {
        return rolesDao.findAll();
    }

    @Override
    public void save(Role role) {
        rolesDao.save(role);
    }

    @Override
    public Role findById(Integer roleId) {
        return rolesDao.fingById(roleId);
    }

    @Override
    public List<Permission> findPermission(Integer roleId) {
        return rolesDao.findPermission(roleId);
    }

    @Override
    public void addPermissionToRole(Long id, Long... permIds) {
        for ( Long pid: permIds) {
            rolesDao.addPermissionToRole(id,pid);
        }
    }
}
