package com.adu.mgr.service;


import com.adu.mgr.domain.User;

public interface IUserService {

    User check(String username, String password);

    void register(String username, String password, Long tel, String email,int admin);
}
