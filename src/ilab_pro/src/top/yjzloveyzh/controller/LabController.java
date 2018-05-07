package top.yjzloveyzh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lab")
public class LabController {

    @RequestMapping("/toContent")
    public String toContent() {

        return "lab/content";
    }
}