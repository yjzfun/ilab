package top.yjzloveyzh.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import top.yjzloveyzh.common.exception.UserException;
import top.yjzloveyzh.common.pojo.User;
import top.yjzloveyzh.dao.LabUserDao;
import top.yjzloveyzh.services.UserService;

@Service(value = "userServiceImpl")
public class UserServiceImpl implements UserService{

    @Autowired
    @Qualifier(value = "labUserDaoImpl")
    LabUserDao labUserDao;

    @Override
    public User login(User user) throws UserException {
        User userByDao = labUserDao.findUserByUserName(user.getUsername());

        if (userByDao != null) {
            if (!userByDao.getPassword().equals(user.getPassword())) {
                throw new UserException("用户名或密码错误, 请重新输入.");
            } else {
                user.setPassword("");

                return userByDao;
            }
        } else {
            throw new UserException("用户名或密码错误, 请重新输入.");
        }
    }

    @Override
    public void register(User user) throws UserException {
        User userByDao = labUserDao.findUserByUserName(user.getUsername());

        if (userByDao != null) {
            throw new UserException("该用户名已存在");
        } else {
            labUserDao.insertLabUser(user);
        }
    }

    @Override
    public User getUserById(int id) {
        return labUserDao.findUserById(id);
    }
}