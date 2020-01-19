package cn.icanci.tourism.service.impl;

import cn.icanci.tourism.dao.ISysLogDao;
import cn.icanci.tourism.domain.SysLog;
import cn.icanci.tourism.service.ISysLogService;
import com.github.pagehelper.PageHelper;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service.impl
 * @Date: Created in 2020/1/18 22:53
 * @ClassAction:
 */
@Service
@Transactional
public class SysLogServiceImpl implements ISysLogService {
    @Autowired
    private ISysLogDao sysLogDao;
    @Override
    public void addSysLog(SysLog sysLog) {
        sysLogDao.addSysLog(sysLog);
    }

    @Override
    public List<SysLog> findAll(int page,int pageSize) {
        //参数 pageNum 是 页码值,pageSize 是每页显示的条数
        PageHelper.startPage(page,pageSize);
        return sysLogDao.findAll();
    }
}
