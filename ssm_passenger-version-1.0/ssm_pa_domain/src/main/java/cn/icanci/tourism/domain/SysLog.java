package cn.icanci.tourism.domain;

import cn.icanci.tourism.utils.DateUtils;
import lombok.Data;
import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.domain
 * @Date: Created in 2020/1/18 22:09
 * @ClassAction:
 */
@Repository
@Data
public class SysLog {
    //id 主键
    private Long id;
    //访问的时间
    private Date visitTime;
    //访问的时间格式化
    private String visitTimeStr;
    //用户名
    private String username;
    //用户登陆的ip地址
    private String ip;
    //用户访问的 资源路径
    private String url;
    //用户带了多久
    private Long executionTime;
    //用户执行了那些方法
    private String method;

    public String getVisitTimeStr() {
        if(visitTime != null){
            visitTimeStr = DateUtils.dateToString(visitTime,"yyyy-MM-dd HH:ss");
        }
        return visitTimeStr;
    }
}
