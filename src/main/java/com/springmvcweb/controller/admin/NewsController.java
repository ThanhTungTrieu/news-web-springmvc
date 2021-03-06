package com.springmvcweb.controller.admin;

import com.springmvcweb.dto.NewsDTO;
import com.springmvcweb.service.ICategoryService;
import com.springmvcweb.service.INewsService;
import com.springmvcweb.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller(value = "newsControllerOfAdmin")
public class NewsController {

    @Autowired
    private INewsService newsService;

    @Autowired
    private ICategoryService categoryService;

    @Autowired
    private MessageUtil messageUtil;

    @RequestMapping(value = "/quan-tri/bai-viet/danh-sach", method = RequestMethod.GET)
    public ModelAndView listNewsPage(@RequestParam(value = "page", required = false) Integer page,
                                     @RequestParam(value = "limit", required = false) Integer limit,
                                     @RequestParam(value = "message", required = false) String message) {
        if (page == null || limit == null) {
            return new ModelAndView("redirect:/quan-tri/bai-viet/danh-sach?page=1&limit=10");
        }
        NewsDTO model = new NewsDTO();
        model.setPage(page);
        model.setLimit(limit);
        Pageable pageable = new PageRequest(page - 1, model.getLimit());
        model.setListResult(newsService.findAll(pageable));
        model.setTotalItems(newsService.getTotalItems());
        model.setTotalPages((int) Math.ceil((double) model.getTotalItems() / model.getLimit()));
        ModelAndView mav = new ModelAndView("admin/news/list");
        if (message != null) {
            Map<String, String> messageAndAlert = messageUtil.getMessage(message);
            mav.addObject("alert", messageAndAlert.get("alert"));
            mav.addObject("message", messageAndAlert.get("message"));
        }
        mav.addObject("model", model);
        return mav;
    }

    @RequestMapping(value = "/quan-tri/bai-viet/chinh-sua", method = RequestMethod.GET)
    public ModelAndView editNewsPage(@RequestParam(value = "id", required = false) Long id, @RequestParam(value = "message", required = false) String message) {
        NewsDTO model = new NewsDTO();
        if (id != null) {
            model = newsService.findById(id);
        }
        ModelAndView mav = new ModelAndView("admin/news/edit");
        if (message != null) {
            Map<String, String> messageAndAlert = messageUtil.getMessage(message);
            mav.addObject("alert", messageAndAlert.get("alert"));
            mav.addObject("message", messageAndAlert.get("message"));
        }
        mav.addObject("categories", categoryService.findAll());
        mav.addObject("model", model);
        return mav;
    }
}
