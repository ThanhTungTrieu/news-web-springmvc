package com.springmvcweb.service.impl;

import com.springmvcweb.dto.NewsDTO;
import com.springmvcweb.entity.NewsEntity;
import com.springmvcweb.repository.NewsRepository;
import com.springmvcweb.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class NewsService implements INewsService {

    @Autowired
    private NewsRepository newsRepository;


    @Override
    public List<NewsDTO> findAll() {
        List<NewsDTO> models = new ArrayList<>();
        List<NewsEntity> entities = newsRepository.findAll();
        for (NewsEntity item: entities) {
            NewsDTO model = new NewsDTO();
            model.setTitle(item.getTitle());
            model.setContent(item.getContent());
            model.setShortDescription(item.getShortDescription());
            model.setCreatedBy(item.getCreatedBy());
            model.setCreatedDate(item.getCreatedDate());
            model.setModifiedBy(item.getModifiedBy());
            model.setModifiedDate(item.getModifiedDate());
            models.add(model);
        }
        return models;
    }
}
