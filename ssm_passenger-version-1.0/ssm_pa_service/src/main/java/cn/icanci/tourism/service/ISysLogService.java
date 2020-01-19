package cn.icanci.tourism.service;

import cn.icanci.tourism.domain.SysLog;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service
 * @Date: Created in 2020/1/18 22:52
 * @ClassAction: 用户的执行日志
 */
public interface ISysLogService {
    /**
     * 增加日志
     * @param sysLog
     */
    void addSysLog(SysLog sysLog);

    /**
     *查询所有的 日志信息
     * @return 返回泛型为 SysLog 的 List 集合
     */
    List<SysLog> findAll(int page,int pageSize);
}
