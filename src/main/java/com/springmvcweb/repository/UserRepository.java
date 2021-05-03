package com.springmvcweb.repository;

import com.springmvcweb.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findOneByUsernameAndStatus(String username, Integer status);
}
