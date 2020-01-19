package cn.icanci.tourism.domain;

import cn.icanci.tourism.utils.DateUtils;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.domain
 * @Date: Created in 2020/1/18 8:50
 * @ClassAction: 订单的 domain
 */
@Data
public class Orders {
    //主键id
    private Long id;
    //订单编号 唯一
    private String orderNum;
    //订单的时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date orderTime;
    //格式化的时间
    private String orderTimeStr;
    //订单状态 订单状态(0 未支付 1 已经支付)
    private Integer orderStatus;
    //格式化的订单状态
    private String orderStatusStr;
    //此订单多少人去
    private Integer peopleCount;
    //商品
    private Product product;
    //旅客们
    private List<Traveller> travellers;
    //会员
    private Member member;
    //付款方式 支付方式(0 支付宝 1 微信 2 其他)
    private Integer payType;
    //格式化的付款方式
    private String payTypeStr;
    //订单信息
    private String orderDesc;
    // 商品id
    private Long productId;
    // 用户id
    private Long memberId;

    public String getOrderTimeStr() {
        if(orderTime != null){
            orderTimeStr = DateUtils.dateToString(orderTime,"yyyy-MM-dd HH:ss");
        }
        return orderTimeStr;
    }

    public String getOrderStatusStr() {
        //订单状态(0 未支付 1 已经支付)
        if(orderStatus != null){
            if (orderStatus != 1) {
                orderStatusStr = "未支付";
            }
            if (orderStatus == 1) {
                orderStatusStr = "已经支付";
            }
        }
        return orderStatusStr;
    }

    public String getPayTypeStr() {
        //支付方式(-1 未支付 0 支付宝 1 微信 2 其他)
        if(payType != null){
            if (payType == 0) {
                payTypeStr = "支付宝";
            }
            if (payType == 1) {
                payTypeStr = "微信";
            }
            if (payType == 2) {
                payTypeStr = "其他";
            }
            if (payType == -1 ) {
                payTypeStr="未支付";
            }
        }
        return payTypeStr;
    }
}
