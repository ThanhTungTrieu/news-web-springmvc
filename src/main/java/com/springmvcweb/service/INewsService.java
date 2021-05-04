package com.springmvcweb.service;

import com.springmvcweb.dto.NewsDTO;

import java.util.List;

public interface INewsService {
    List<NewsDTO> findAll();
}
