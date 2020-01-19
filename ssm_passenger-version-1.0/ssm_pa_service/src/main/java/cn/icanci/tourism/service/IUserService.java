package cn.icanci.tourism.service;

import cn.icanci.tourism.domain.Role;
import cn.icanci.tourism.domain.UserInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service
 * @Date: Created in 2020/1/18 14:00
 * @ClassAction: 认定器接口
 */
public interface IUserService  extends UserDetailsService {
    /**
     * 查询所有的 User
     * @return 返回泛型为 UserInfo 的 List 集合
     */
    List<UserInfo> findAll(int page,int pageSize);

    /**
     * 保存一个用户的信息
     * @param user 需要保存的用户信息
     */
    void save(UserInfo user);

    /**
     * 通过用户的 id 查询用户的所有的信息
     * @param id 需要查询的id
     * @return 返回UserInfo对象
     */
    UserInfo findById(Integer id);

    /**
     * 根据用户的的id查询所有的角色权限
     * @param id 需要查询的用户的id
     * @return 返回泛型为 Role 的 List 集合
     */
    List<Role> findOtherRoles(Integer id);


    /**
     * 保存多个角色
     * @param id 需要保存的角色id
     * @param roleIds 需要保存的角色信息
     */
    void addRoleToUser(Long id,Long ... roleIds);

    /**
     * 更新一个用户的信息
     * @param userInfo
     */
    void update(UserInfo userInfo);
}
