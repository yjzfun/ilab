package top.yjzloveyzh.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import top.yjzloveyzh.common.exception.UserException;
import top.yjzloveyzh.common.pojo.User;
import top.yjzloveyzh.common.utils.StringUtil;
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

    @Override
    public int updateUser(int id, String gender, String name, String province, String city, String area, String cellphone, String zipCode, String address, String email) throws UserException {
        User user = new User();

        if (id <= 0) {
            throw new UserException("该用户不存在");
        }

        String userArea = "";

        if (province != null && city != null && area != null) {
            userArea = province + "-" + city + "-" + area;
        }

        gender = StringUtil.setNullToEmpty(gender);
        name = StringUtil.setNullToEmpty(name);
        cellphone = StringUtil.setNullToEmpty(cellphone);
        address = StringUtil.setNullToEmpty(address);
        email = StringUtil.setNullToEmpty(email);

        user.setId(id);
        user.setAddress(address);
        user.setArea(userArea);
        user.setEmail(email);
        user.setGender(gender);
        user.setName(name);
        user.setTelPhone(cellphone);
        user.setZipCode(zipCode);

        int editCount = labUserDao.editByUser(user);

        return editCount;
    }

}