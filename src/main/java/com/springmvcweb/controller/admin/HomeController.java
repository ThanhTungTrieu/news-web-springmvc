package com.springmvcweb.controller.admin;

import com.springmvcweb.dto.NewsDTO;
import com.springmvcweb.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller (value = "homeControllerOfAdmin")
public class HomeController {

    @Autowired
    private INewsService newsService;

    @RequestMapping(value = "/quan-tri/trang-chu", method = RequestMethod.GET)
    public ModelAndView homepage() {
        ModelAndView mav = new ModelAndView("admin/home");
        return mav;
    }
}
