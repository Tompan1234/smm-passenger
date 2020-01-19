package cn.icanci.tourism.domain;

import lombok.Data;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.domain
 * @Date: Created in 2020/1/18 8:51
 * @ClassAction: 旅客
 */
@Data
public class Traveller {
    //无意义 主键id
    private Long id;
    //姓名
    private String name;
    //性别
    private String sex;
    //手机号码
    private String phoneNum;
    //证件类型  ( 0 身份证 1 护照 2 军官证 )
    private Integer credentialsType;
    //格式化的证件类型
    private String credentialsTypeStr;
    //证件号码
    private String credentialsNum;
    //旅客类型
    private Integer travellerType;
    //格式化的旅客类型 ( 0 成人 1 儿童)
    private String travellerTypeStr;

    public String getCredentialsTypeStr() {
        if(credentialsType != null){
            if (credentialsType == 0){
                credentialsTypeStr = "身份证";
            }
            if (credentialsType == 1){
                credentialsTypeStr = "护照";
            }
            if (credentialsType == 2){
                credentialsTypeStr = "军官证";
            }
        }
        return credentialsTypeStr;
    }

    public String getTravellerTypeStr() {
        if(travellerType != null){
            if (travellerType == 0){
                travellerTypeStr = "成人";
            }
            if (travellerType == 1){
                travellerTypeStr = "儿童";
            }
        }
        return travellerTypeStr;
    }
}
