package top.yjzloveyzh.dao.impl;

import org.springframework.stereotype.Repository;

import top.yjzloveyzh.common.pojo.RequestEquipment;
import top.yjzloveyzh.dao.EquipmentDao;
import top.yjzloveyzh.dao.MySqlSessionDaoSupport;

@Repository(value="equipmentDaoImpl")
public class EquipmentDaoImpl extends MySqlSessionDaoSupport implements EquipmentDao{

    @Override
    public int insertRequestEquipment(RequestEquipment requestEquipment) {
        int id = getSqlSession().getMapper(EquipmentDao.class).insertRequestEquipment(requestEquipment);

        return id;
    }

}
