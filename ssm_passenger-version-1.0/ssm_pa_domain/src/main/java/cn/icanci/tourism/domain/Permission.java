package cn.icanci.tourism.domain;

import lombok.Data;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.domain
 * @Date: Created in 2020/1/18 13:09
 * @ClassAction: 权限表
 */
@Data
public class Permission {
    //主键 id
    private String id;
    //权限的名称
    private String permissionName;
    //权限的路径
    private String url;
    //此权限对应的角色
    private List<Role> roles;
}
