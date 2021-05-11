package com.springmvcweb.converter;

import com.springmvcweb.dto.CategoryDTO;
import com.springmvcweb.entity.CategoryEntity;
import org.springframework.stereotype.Component;

@Component
public class CategoryConverter {

    public CategoryDTO toDTO(CategoryEntity entity) {
        CategoryDTO result = new CategoryDTO();
        result.setId(entity.getId());
        result.setName(entity.getName());
        result.setCode(entity.getCode());
        return result;
    }

    public CategoryEntity toEntity(CategoryDTO categoryDTO) {
        CategoryEntity result = new CategoryEntity();
        result.setName(categoryDTO.getName());
        result.setCode(categoryDTO.getCode());
        return result;
    }
}
