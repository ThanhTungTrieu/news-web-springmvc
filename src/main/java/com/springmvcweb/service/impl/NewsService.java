package com.springmvcweb.service.impl;

import com.springmvcweb.converter.NewsConverter;
import com.springmvcweb.dto.NewsDTO;
import com.springmvcweb.entity.NewsEntity;
import com.springmvcweb.repository.NewsRepository;
import com.springmvcweb.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class NewsService implements INewsService {

    @Autowired
    private NewsRepository newsRepository;

    @Autowired
    private NewsConverter newsConverter;

    @Override
    public List<NewsDTO> findAll() {
        List<NewsDTO> models = new ArrayList<>();
        List<NewsEntity> entities = newsRepository.findAll();
        for (NewsEntity item: entities) {
            NewsDTO newsDTO = newsConverter.toDTO(item);
            models.add(newsDTO);
        }
        return models;
    }

    @Override
    public List<NewsDTO> findAll(Pageable pageable) {
        List<NewsDTO> models = new ArrayList<>();
        List<NewsEntity> entities = newsRepository.findAll(pageable).getContent();
        for (NewsEntity item: entities) {
            NewsDTO newsDTO = newsConverter.toDTO(item);
            models.add(newsDTO);
        }
        return models;
    }

    @Override
    public int getTotalItems() {
        return (int) newsRepository.count();
    }

    @Override
    public NewsDTO findById(long id) {
        NewsEntity newsEntity = newsRepository.findOne(id);
        NewsDTO newsDTO = newsConverter.toDTO(newsEntity);
        return newsDTO;
    }
}
