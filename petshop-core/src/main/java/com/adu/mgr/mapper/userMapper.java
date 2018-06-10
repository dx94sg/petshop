package com.adu.mgr.mapper;

import com.adu.mgr.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface userMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    User selectByPrimaryKey(String id);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    User check(@Param("username") String username, @Param("password") String password);

    void register(@Param("username") String username, @Param("password") String password,
                  @Param("tel") Long tel,@Param("email") String email,
                  @Param("admin") int admin);
}