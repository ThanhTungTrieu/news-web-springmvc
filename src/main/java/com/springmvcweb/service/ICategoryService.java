package com.springmvcweb.service;

import com.springmvcweb.dto.CategoryDTO;

import java.util.List;

public interface ICategoryService {
    List<CategoryDTO> findAll();
}
