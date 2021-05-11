package com.springmvcweb.service.impl;

import com.springmvcweb.converter.CategoryConverter;
import com.springmvcweb.dto.CategoryDTO;
import com.springmvcweb.entity.CategoryEntity;
import com.springmvcweb.repository.CategoryRepository;
import com.springmvcweb.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CategoryService implements ICategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private CategoryConverter categoryConverter;

    @Override
    public List<CategoryDTO> findAll() {
        List<CategoryDTO> models = new ArrayList<>();
        List<CategoryEntity> entities = categoryRepository.findAll();
        for (CategoryEntity item: entities) {
            CategoryDTO categoryDTO = categoryConverter.toDTO(item);
            models.add(categoryDTO);
        }
        return models;
    }
}
