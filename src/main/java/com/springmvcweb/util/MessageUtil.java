package com.springmvcweb.util;

import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
public class MessageUtil {
    public Map<String, String> getMessage(String message) {
        Map<String, String> result = new HashMap<>();
        if (message.equals("insert_success")) {
            result.put("alert", "success");
            result.put("message", "Thêm bài viết thành công");
        } else if (message.equals("update_success")) {
            result.put("alert", "success");
            result.put("message", "Cập nhật bài viết thành công");
        } else if (message.equals("system_error")) {
            result.put("alert", "danger");
            result.put("message", "Lỗi hệ thống");
        }
        return result;
    }
}
