package com.adu.mgr.service.UserServiceImpl;

import com.adu.mgr.domain.User;
import com.adu.mgr.mapper.userMapper;
import com.adu.mgr.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private userMapper userMapper;

    public User check(String username, String password) {
        return userMapper.check(username, password);
    }

    @Override
    public void register(String username, String password, Long tel, String email,int admin) {
        userMapper.register(username, password, tel, email,admin);
    }

}
