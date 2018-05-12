package top.yjzloveyzh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import top.yjzloveyzh.common.Constants;
import top.yjzloveyzh.common.exception.RecordException;
import top.yjzloveyzh.common.pojo.Pagination;
import top.yjzloveyzh.common.pojo.RequestBuyRecord;
import top.yjzloveyzh.common.pojo.User;
import top.yjzloveyzh.services.RecordService;

@Controller
@RequestMapping(value = "/approvement")
public class ApprovementController {

    @Qualifier(value = "recordServiceImpl")
    @Autowired
    RecordService recordService;

    @RequestMapping(value = "/buy-record")
    public String toApprovementManager(String searchKeyWord, String page, String orderBy, HttpSession session, HttpServletRequest request) {

        User user = (User) session.getAttribute(Constants.User.SESSION_USER_KEY);

        try {
            Pagination<RequestBuyRecord> pagination = recordService.getNotReplyRequestBuyRecord(user, searchKeyWord, page, orderBy);
            request.setAttribute("pagination", pagination);
        } catch (RecordException recordException) {

            if (recordException.getErrorCode().equals(Constants.ErrorCode.ERROR_USER_NOT_EXIST)) {

                return "redirect:/user/toLogin";
            }
        }


        return "approvement/approve_buy_record";
    }
}
