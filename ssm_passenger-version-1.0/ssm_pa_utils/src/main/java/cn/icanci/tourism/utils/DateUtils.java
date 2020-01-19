package cn.icanci.tourism.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.utils
 * @Date: Created in 2020/1/17 19:26
 * @ClassAction: 日期和字符串的转换的工具类
 */
public class DateUtils {

    /**
     * 日期转成字符串
     * @param dateTime  需要转换的 日期对象
     * @param datePattern  需要转换的格式
     * @return  返回转换对应格式的字符串
     */
    public static String dateToString(Date dateTime,String datePattern){
        return new SimpleDateFormat(datePattern).format(dateTime);
    }

    /**
     * 字符串转日期对象
     * @param str 把传入的字符串转换为 日期对象
     * @param datePattern  需要转换的格式
     * @return 返回转换的日期对象
     */
    public static Date stringToDate(String str,String datePattern) throws Exception{
        return new SimpleDateFormat(datePattern).parse(str);
    }
}
