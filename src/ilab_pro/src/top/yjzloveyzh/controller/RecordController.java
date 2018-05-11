package top.yjzloveyzh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/record")
public class RecordController {

    @RequestMapping("/buy-record")
    public String toBuyRecord(String searchKeyWord, String page, String orderBy) {


        return "record/request_buy_record";
    }
}
