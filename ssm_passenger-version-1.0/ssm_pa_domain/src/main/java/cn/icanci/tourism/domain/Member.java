package cn.icanci.tourism.domain;

import lombok.Data;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.domain
 * @Date: Created in 2020/1/18 8:51
 * @ClassAction: 会员
 */
@Data
public class Member {
    //主键id
    private Integer id;
    //会员姓名
    private String name;
    //会员昵称
    private String nickname;
    //会员手机号码
    private String phoneNum;
    //会员邮箱
    private String email;
}
