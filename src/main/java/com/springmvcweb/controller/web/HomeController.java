package com.springmvcweb.controller.web;

import com.springmvcweb.dto.NewsDTO;
import com.springmvcweb.service.INewsService;
import com.springmvcweb.service.impl.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller (value = "homeControllerOfWeb")
public class HomeController {

    @Autowired
    private INewsService newsService;

    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homepage(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "limit", required = false) Integer limit) {
        if (page == null || limit == null) {
            return new ModelAndView("redirect:/trang-chu?page=1&limit=6");
        }
        NewsDTO model = new NewsDTO();
        model.setPage(page);
        model.setLimit(limit);
        Pageable pageable = new PageRequest(page - 1, model.getLimit());
        model.setListResult(newsService.findAll(pageable));
        model.setTotalItems(newsService.getTotalItems());
        model.setTotalPages((int) Math.ceil((double) model.getTotalItems() / model.getLimit()));
        ModelAndView mav = new ModelAndView("web/home");
        mav.addObject("model", model);
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
