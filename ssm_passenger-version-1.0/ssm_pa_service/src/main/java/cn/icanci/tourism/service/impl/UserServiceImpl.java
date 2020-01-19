package cn.icanci.tourism.service.impl;

import cn.icanci.tourism.dao.IUserDao;
import cn.icanci.tourism.domain.Role;
import cn.icanci.tourism.domain.UserInfo;
import cn.icanci.tourism.service.IUserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.service.impl
 * @Date: Created in 2020/1/18 14:01
 * @ClassAction: 认证器
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements IUserService{

    @Autowired
    private IUserDao userDao;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserInfo userInfo = null;
        try {
            userInfo =  userDao.findByUsername(username);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //处理自己的UserInfo 对象
        User user = new User(userInfo.getUsername(),userInfo.getPassword(),getAuthority(userInfo.getRoles()));
        //状态等于0 表示不可用 为 1 就可以使用
        User user1 = new User(userInfo.getUsername(),userInfo.getPassword(),userInfo.getStatus()==1 ? true : false,true,true,true,getAuthority(userInfo.getRoles()));
        return  user1;
    }

    public List<SimpleGrantedAuthority> getAuthority(List<Role> roles){
        List<SimpleGrantedAuthority> simpleGrantedAuthorityList = new ArrayList<>();
        for (Role role: roles) {
            simpleGrantedAuthorityList.add(new SimpleGrantedAuthority(role.getRoleName()));
        }
        return simpleGrantedAuthorityList;
    }

    @Override
    public List<UserInfo> findAll(int page,int pageSize) {
        //参数 pageNum 是 页码值,pageSize 是每页显示的条数
        PageHelper.startPage(page,pageSize);
        return userDao.findAll();
    }

    @Override
    public void save(UserInfo user) {
        //对密码加密处理 这是框架提供的加密方式
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userDao.save(user);
    }

    @Override
    public UserInfo findById(Integer id) {
        return userDao.findById(id);
    }

    @Override
    public List<Role> findOtherRoles(Integer id) {
        return userDao.findOtherRoles(id);
    }

    @Override
    public void addRoleToUser(Long id, Long... roleIds) {
        for (Long role: roleIds) {
            userDao.addRoleToUser(id,role);
        }
    }

    @Override
    public void update(UserInfo userInfo) {
        userDao.update(userInfo);
    }
}
