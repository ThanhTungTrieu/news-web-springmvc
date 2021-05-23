package com.springmvcweb.api.admin;

import com.springmvcweb.dto.NewsDTO;
import com.springmvcweb.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController(value = "newsAPIOfAdmin")
public class NewsAPI {

    @Autowired
    private INewsService newsService;

    @PostMapping("/api/bai-viet")
    public NewsDTO createNews(@RequestBody NewsDTO newsDTO) {
        return newsService.save(newsDTO);
    }

    @PutMapping("/api/bai-viet")
    public NewsDTO updateNews(@RequestBody NewsDTO updateNewsDTO) {
        return newsService.save(updateNewsDTO);
    }

    @DeleteMapping("/api/bai-viet")
    public void deleteNews(@RequestBody Long[] ids) {

    }
}