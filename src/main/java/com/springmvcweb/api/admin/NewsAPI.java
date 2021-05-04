package com.springmvcweb.api.admin;

import com.springmvcweb.dto.NewsDTO;
import org.springframework.web.bind.annotation.*;

@RestController(value = "newsAPIOfAdmin")
public class NewsAPI {

    @PostMapping("/api/bai-viet")
    public NewsDTO createNews(@RequestBody NewsDTO newsDTO) {
        return newsDTO;
    }

    @PutMapping("/api/bai-viet")
    public NewsDTO updateNews(@RequestBody NewsDTO newsDTO) {
        return newsDTO;
    }

    @DeleteMapping("/api/bai-viet")
    public void deleteNews(@RequestBody Long[] ids) {

    }
}