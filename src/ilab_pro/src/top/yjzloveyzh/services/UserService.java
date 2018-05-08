package top.yjzloveyzh.services;

import top.yjzloveyzh.common.exception.UserException;
import top.yjzloveyzh.common.pojo.User;

public interface UserService {

    public User login(User user) throws UserException;

    public void register(User user) throws UserException;

    public User getUserById(int id);

    public int updateUser(int id, String gender, String name, String province,
            String city, String area, String cellphone, String zipCode, String address, String email) throws UserException;
}