package top.yjzloveyzh.services.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import top.yjzloveyzh.common.Constants;
import top.yjzloveyzh.common.exception.EquipmentException;
import top.yjzloveyzh.common.pojo.RequestBuyRecord;
import top.yjzloveyzh.common.pojo.RequestEquipment;
import top.yjzloveyzh.common.pojo.User;
import top.yjzloveyzh.dao.EquipmentDao;
import top.yjzloveyzh.dao.RecordDao;
import top.yjzloveyzh.services.EquipmentService;

@Service(value = "equipmentServiceImpl")
public class EquipmentServiceImpl implements EquipmentService{

    @Qualifier(value="equipmentDaoImpl")
    @Autowired
    EquipmentDao equipmentDaoImpl;

    @Qualifier(value="recordDaoImpl")
    @Autowired
    RecordDao recordDaoImpl;

    @Override
    public void requestBuyEquipment(Map<String, Object> equipments, User user) throws EquipmentException {
        ArrayList<Map<String, String>> equipmentList = (ArrayList<Map<String, String>>) equipments.get(
            Constants.EquipmentController.KEY_REQUEST_BUY_EQUIPMENTS_JSON
        );

        String title = (String) equipments.get("title");

        List<RequestEquipment> requestRequipments = new ArrayList<RequestEquipment>();

        RequestBuyRecord buyRecord = new RequestBuyRecord();
        buyRecord.setRequestedUser(user);
        buyRecord.setTitle(title);
        double cost = 0;

        for(Map<String, String> equipment : equipmentList) {

            String count = equipment.get("count");
            String price = equipment.get("price");

            try {
                cost += Integer.parseInt(count) * Double.parseDouble(price);
            } catch (NumberFormatException numberFormatException) {
                throw new EquipmentException(Constants.ErrorCode.ERROR_PARAMETER_ILLEGAL, numberFormatException.getMessage());
            }
        }

        buyRecord.setCost(cost);
        buyRecord.setRequestedUserId(user.getId());

        recordDaoImpl.insertRequestRecordByRecord(buyRecord);
        int buyRecordId = buyRecord.getId();

        for (Map<String, String> equipment : equipmentList) {
            String name = equipment.get("name");
            String count = equipment.get("count");
            String price = equipment.get("price");
            String shop = equipment.get("shop");
            String labId = equipment.get("lab");

            RequestEquipment requestEquipment = new RequestEquipment();

            try {
                requestEquipment.setLabId(Integer.parseInt(labId));
                requestEquipment.setName(name);
                requestEquipment.setOrigin(shop);
                requestEquipment.setCount(Integer.parseInt(count));
                requestEquipment.setPrice(Double.parseDouble(price));
                requestEquipment.setRequestBuyRecordId(buyRecordId);

                equipmentDaoImpl.insertRequestEquipment(requestEquipment);


            } catch (NumberFormatException numberFormatException) {
                throw new EquipmentException(Constants.ErrorCode.ERROR_PARAMETER_ILLEGAL, numberFormatException.getMessage());
            }
        }
    }
}
