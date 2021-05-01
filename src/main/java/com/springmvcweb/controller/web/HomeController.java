package com.springmvcweb.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller (value = "homeControllerOfWeb")
public class HomeController {

    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homepage() {
        ModelAndView mav = new ModelAndView("web/home");
        return mav;
    }

    @RequestMapping(value = "/springmvc", method = RequestMethod.GET)
    public ModelAndView springMVCPage() {
        ModelAndView mav = new ModelAndView("springmvc");
        return mav;
    }
}
