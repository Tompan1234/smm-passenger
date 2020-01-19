package cn.icanci.tourism.domain;

import cn.icanci.tourism.utils.DateUtils;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.domain
 * @Date: Created in 2020/1/17 14:21
 * @ClassAction: 产品信息 Product
 */
@Data
public class Product {
    //主键
    private Long id;
    //产品编号,唯一不为空
    private String productNum;
    //产品名称(路线名称)
    private String productName;
    //出发城市
    private String cityName;
    //出发时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date departureTime;
    //格式化的时间
    private String departureTimeStr;
    //产品价格
    private BigDecimal productPrice;
    //产品描述
    private String productDesc;
    //状态(0 关闭 1 开启)
    private Integer productStatus;
    //格式化的状态
    private String productStatusStr;

    public String getDepartureTimeStr() {
        if(departureTime != null){
            //格式化的时间
            departureTimeStr = DateUtils.dateToString(departureTime,"yyyy-MM-dd HH:mm:ss");
        }
        return departureTimeStr;
    }

    public String getProductStatusStr() {
        if(productStatus != null){
            //状态(0 关闭 1 开启)
            if(productStatus == 0 ){
                productStatusStr = "关闭";
            }
            if(productStatus == 1 ){
                productStatusStr = "开启";
            }
        }
        return productStatusStr;
    }

}
