package cn.icanci.tourism.dao;

import cn.icanci.tourism.domain.Role;
import cn.icanci.tourism.domain.UserInfo;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.dao
 * @Date: Created in 2020/1/18 14:08
 * @ClassAction: 用户的 dao
 */
@Repository
public interface IUserDao {

    /**
     * 根据用户名来查询用户
     * @param username 需要查询的用户名
     * @return 返回找到的用户对象
     */
    @Select("select * from ssm_pa_user where username = #{username}")
    @Results({
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "username",column = "username"),
            @Result(property = "email",column = "email"),
            @Result(property = "password",column = "password"),
            @Result(property = "phoneNum",column = "phoneNum"),
            @Result(property = "status",column = "status"),
            @Result(property = "roles",column = "id",javaType = java.util.List.class,many = @Many(select = "cn.icanci.tourism.dao.IRolesDao.findAllRoleByUserId"))
    })
    UserInfo findByUsername(String username) throws Exception;

    /**
     * 查询所有的 User
     * @return 返回泛型为 UserInfo 的 List 集合
     */
    @Select("select * from ssm_pa_user")
    List<UserInfo> findAll();

    /**
     * 保存一个用户的信息
     * @param user 需要保存的用户信息
     */
    @Insert("insert into ssm_pa_user (username,email,password,phoneNum,status) values (#{username},#{email},#{password},#{phoneNum},#{status})")
    void save(UserInfo user);

    /**
     * 通过用户的 id 查询用户的所有的信息
     * @param id 需要查询的id
     * @return 返回UserInfo对象
     */
    @Select("select * from ssm_pa_user where id = #{id}")
    @Results({
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "username",column = "username"),
            @Result(property = "email",column = "email"),
            @Result(property = "password",column = "password"),
            @Result(property = "phoneNum",column = "phoneNum"),
            @Result(property = "status",column = "status"),
            @Result(property = "roles",column = "id",javaType = java.util.List.class,many = @Many(select = "cn.icanci.tourism.dao.IRolesDao.findAllRoleByUserId"))
    })
    UserInfo findById(Integer id);


    /**
     * 根据用户的的id查询所有的角色权限
     * @param id 需要查询的用户的id
     * @return 返回泛型为 Role 的 List 集合
     */
    @Select("select * from ssm_pa_role where id not in (select roleId from ssm_pa_users_role where userId = #{id})")
    List<Role> findOtherRoles(Integer id);

    /**
     * 保存多个角色
     * @param id 需要保存的角色id
     * @param roleId 需要保存的角色信息
     */
    @Insert("insert into ssm_pa_users_role (userId,roleId) values (#{id},#{roleId})")
    void addRoleToUser(@Param("id") Long id,@Param("roleId") Long roleId);

    /**
     * 更新一个用户的信息
     * @param userInfo
     */
    @Update("update ssm_pa_user set username=#{username},password=#{password},email=#{email},phoneNum=#{phoneNum},status=#{status} where id = #{id}")
    void update(UserInfo userInfo);
}
