package com.springmvcweb.converter;

import com.springmvcweb.dto.NewsDTO;
import com.springmvcweb.entity.NewsEntity;
import org.springframework.stereotype.Component;

@Component
public class NewsConverter {

    public NewsDTO toDTO(NewsEntity entity) {
        NewsDTO result = new NewsDTO();
        result.setId(entity.getId());
        result.setTitle(entity.getTitle());
        result.setThumbnail(entity.getThumbnail());
        result.setShortDescription(entity.getShortDescription());
        result.setContent(entity.getContent());
        result.setCategoryCode(entity.getCategory().getCode());
        return result;
    }

    public NewsEntity toEntity(NewsDTO dto) {
        NewsEntity result = new NewsEntity();
        result.setTitle(dto.getTitle());
        result.setThumbnail(dto.getThumbnail());
        result.setShortDescription(dto.getShortDescription());
        result.setContent(dto.getContent());
        return result;
    }

    public NewsEntity toEntity(NewsEntity result, NewsDTO dto) {
        result.setTitle(dto.getTitle());
        result.setThumbnail(dto.getThumbnail());
        result.setShortDescription(dto.getShortDescription());
        result.setContent(dto.getContent());
        return result;
    }
}
