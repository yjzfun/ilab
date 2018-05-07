package top.yjzloveyzh.services;

import top.yjzloveyzh.common.exception.UserException;
import top.yjzloveyzh.common.pojo.User;

public interface UserService {

    public User login(User user) throws UserException;

    public void register(User user) throws UserException;

    public User getUserById(int id);
}