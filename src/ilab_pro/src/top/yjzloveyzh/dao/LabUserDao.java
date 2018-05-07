package top.yjzloveyzh.dao;

import top.yjzloveyzh.common.pojo.User;

public interface LabUserDao {

    public long insertLabUser(User user);

    public User findUserByUserName(String username);

    public User findUserById(int id);
}