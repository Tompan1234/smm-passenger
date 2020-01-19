package cn.icanci.tourism.domain;

import lombok.Data;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.domain
 * @Date: Created in 2020/1/18 13:06
 * @ClassAction: User 的信息
 */
@Data
public class UserInfo {
    //主键 id
    private Long id;
    //用户的姓名
    private String username;
    //用户的邮箱
    private String email;
    //用户的密码 加密
    private String password;
    //用户的手机号码
    private String phoneNum;
    //用户的状态   0 拒绝访问 1 可以访问
    private Integer status;
    //用户的状态 转型输出数据
    private String statusStr;
    //用户有那些权限
    private List<Role> roles;

    public String getStatusStr() {
        if(status != null){
            if(status == 0){
                statusStr= "拒绝访问";
            }
            if(status == 1){
                statusStr= "允许访问";
            }
        }
        return statusStr;
    }
}
