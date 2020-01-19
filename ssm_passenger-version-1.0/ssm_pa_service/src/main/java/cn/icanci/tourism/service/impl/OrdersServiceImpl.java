package cn.icanci.tourism.service.impl;

import cn.icanci.tourism.dao.IOrdersDao;
import cn.icanci.tourism.domain.Orders;
import cn.icanci.tourism.service.IOrdersService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service.impl
 * @Date: Created in 2020/1/18 9:16
 * @ClassAction: Orders 业务顶层接口的实现类
 */
@Service
@Transactional
public class OrdersServiceImpl implements IOrdersService {
    @Autowired
    private IOrdersDao ordersDao;
    @Override
    public List<Orders> findAll(int page,int pageSize) throws Exception {
        //参数 pageNum 是 页码值,pageSize 是每页显示的条数
        PageHelper.startPage(page,pageSize);
        return ordersDao.findAll();
    }

    @Override
    public Orders findById(Integer id) {
        return ordersDao.findById(id);
    }

    @Override
    public void save(Orders orders) {
        System.out.println(orders);
        ordersDao.save(orders);
    }

    @Override
    public void update(Orders orders) {
        ordersDao.update(orders);
    }


}
