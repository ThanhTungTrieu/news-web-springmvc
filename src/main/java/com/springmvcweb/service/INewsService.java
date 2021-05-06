package com.springmvcweb.service;

import com.springmvcweb.dto.NewsDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface INewsService {
    List<NewsDTO> findAll();
    List<NewsDTO> findAll(Pageable pageable);
    int getTotalItems();
}
