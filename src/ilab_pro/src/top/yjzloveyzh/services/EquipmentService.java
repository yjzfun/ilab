package top.yjzloveyzh.services;

import java.util.Map;

import top.yjzloveyzh.common.exception.EquipmentException;
import top.yjzloveyzh.common.pojo.User;

public interface EquipmentService {

    public void requestBuyEquipment(Map<String, Object> equipments, User user) throws EquipmentException;
}
