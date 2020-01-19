package cn.icanci.tourism.service;

import cn.icanci.tourism.domain.Permission;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service
 * @Date: Created in 2020/1/18 19:04
 * @ClassAction:
 */

public interface IPermissionService {

    /**
     *  查询所有的权限
     * @return 查询所有的权限
     */
    List<Permission> findAll(int page,int pageSize);
    /**
     * 添加一个权限
     * @param permission 需要添加的权限的对象
     */
    void save(Permission permission);
}
