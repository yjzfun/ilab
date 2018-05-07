package top.yjzloveyzh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/equipment")
public class EquipmentController {
    @RequestMapping("/toRequestBuyEquip")
    public String toRequestBuyEquip() {

        return "equipment/request_buy_equipment";
    }
}