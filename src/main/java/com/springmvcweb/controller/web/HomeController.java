package com.springmvcweb.controller.web;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

    @RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        ModelAndView mav = new ModelAndView("login");
        return mav;
    }

    @RequestMapping(value = "/thoat", method = RequestMethod.GET)
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            new SecurityContextLogoutHandler().logout(request, response, authentication);
        }
        return new ModelAndView("redirect:/trang-chu");
    }

    @RequestMapping(value = "/access-denied", method = RequestMethod.GET)
    public ModelAndView accessDenied() {
        return new ModelAndView("redirect:/dang-nhap?access_denied");
    }

}
