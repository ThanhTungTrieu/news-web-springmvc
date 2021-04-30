package com.springmvcweb.service.impl;

import com.springmvcweb.service.HomeService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HomeServiceImpl implements HomeService {

    @Override
    public List<String> loadMenu() {
        List<String> menus = new ArrayList<>();
        menus.add("Blog java web");
        menus.add("Hướng dẫn học java web");
        menus.add("Liên hệ");
        menus.add("Thanh toán");
        return menus;
    }
}
