package cn.icanci.tourism.dao;

import cn.icanci.tourism.domain.SysLog;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.dao
 * @Date: Created in 2020/1/18 22:15
 * @ClassAction:  日志记录
 */
@Repository
public interface ISysLogDao {


    /**
     * 增加日志
     * @param sysLog
     */
    @Insert("insert into ssm_pa_log (visitTime,username,ip,url,executionTime,method) values(#{visitTime},#{username},#{ip},#{url},#{executionTime},#{method})")
    void addSysLog(SysLog sysLog);

    /**
     *查询所有的 日志信息
     * @return 返回泛型为 SysLog 的 List 集合
     */
    @Select("select * from ssm_pa_log")
    List<SysLog> findAll();
}
