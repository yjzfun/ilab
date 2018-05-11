package top.yjzloveyzh.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import top.yjzloveyzh.common.Constants;
import top.yjzloveyzh.common.exception.EquipmentException;
import top.yjzloveyzh.common.pojo.Lab;
import top.yjzloveyzh.common.pojo.User;
import top.yjzloveyzh.services.EquipmentService;
import top.yjzloveyzh.services.LabService;

@Controller
@RequestMapping("/equipment")
public class EquipmentController {

    @Qualifier(value="equipmentServiceImpl")
    @Autowired
    EquipmentService equipmentService;

    @Qualifier(value="labServiceImpl")
    @Autowired
    LabService labService;

    @RequestMapping("/toRequestBuyEquip")
    public String toRequestBuyEquip(HttpServletRequest request) throws JsonProcessingException {

        List<Lab> labs = labService.getLabs();
        ObjectMapper objectMapper = new ObjectMapper();
        String labsJson = objectMapper.writeValueAsString(labs);

        request.setAttribute(Constants.EquipmentController.KEY_LABS, labsJson);

        return "equipment/request_buy_equipment";
    }

    @RequestMapping(value = "/request-buy", method = RequestMethod.POST, consumes = "application/json")
    public @ResponseBody Map<String, String> requestBuy(@RequestBody Map<String, Object> equipments, HttpServletResponse response, HttpSession session) throws IOException {

        ArrayList<Map<String, String>> equipmentList = (ArrayList<Map<String, String>>) equipments.get(
            Constants.EquipmentController.KEY_REQUEST_BUY_EQUIPMENTS_JSON
        );

        User user = (User) session.getAttribute(Constants.User.SESSION_USER_KEY);
        Map<String, String> backDate = new HashMap<String, String>();

        if (user != null) {
            try {
                equipmentService.requestBuyEquipment(equipments, user);

            } catch (EquipmentException e) {
                backDate.put(Constants.Code.BACK_CODE, Constants.ErrorCode.ERROR_PARAMETER_ILLEGAL);
                backDate.put(Constants.Code.BACK_TIP, e.getMessage());

                return backDate;
            }
        } else {
            backDate.put(Constants.Code.BACK_CODE, Constants.ErrorCode.ERROR_USER_NOT_EXIST);
        }

        backDate.put(Constants.Code.BACK_CODE, Constants.ErrorCode.SUCCESS);

        return backDate;
    }
}
