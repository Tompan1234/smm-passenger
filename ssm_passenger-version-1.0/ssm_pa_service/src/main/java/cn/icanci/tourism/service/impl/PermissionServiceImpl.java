package cn.icanci.tourism.service.impl;

import cn.icanci.tourism.dao.IPermissionDao;
import cn.icanci.tourism.dao.IProductDao;
import cn.icanci.tourism.domain.Permission;
import cn.icanci.tourism.service.IPermissionService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service.impl
 * @Date: Created in 2020/1/18 19:04
 * @ClassAction:
 */
@Service
@Transactional
public class PermissionServiceImpl implements IPermissionService {

    @Autowired
    private IPermissionDao permissionDao;
    @Override
    public List<Permission> findAll( int page,int pageSize) {
        //参数 pageNum 是 页码值,pageSize 是每页显示的条数
        PageHelper.startPage(page,pageSize);
        return permissionDao.findAll();
    }

    @Override
    public void save(Permission permission) {
        permissionDao.save(permission);
    }
}
