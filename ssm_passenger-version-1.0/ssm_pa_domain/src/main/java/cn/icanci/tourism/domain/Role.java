package cn.icanci.tourism.domain;

import lombok.Data;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.domain
 * @Date: Created in 2020/1/18 13:06
 * @ClassAction: 角色表
 */
@Data
public class Role {
    //主键 id
    private Long id;
    //角色名字
    private String roleName;
    //角色描述
    private String roleDesc;
    //角色权限
    private List<Permission> permissions;
    //那些用户有这个权限
    private List<UserInfo> users;
}
