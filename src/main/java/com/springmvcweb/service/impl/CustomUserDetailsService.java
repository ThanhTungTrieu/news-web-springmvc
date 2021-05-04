package com.springmvcweb.service.impl;

import com.springmvcweb.dto.MyUser;
import com.springmvcweb.constant.SystemConstant;
import com.springmvcweb.entity.RoleEntity;
import com.springmvcweb.entity.UserEntity;
import com.springmvcweb.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity userEntity = userRepository.findOneByUsernameAndStatus(username, SystemConstant.ACTIVE_STATUS);
        if (userEntity == null) {
            throw new UsernameNotFoundException("User not found");
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (RoleEntity role: userEntity.getRoles()) {
            authorities.add(new SimpleGrantedAuthority(role.getCode()));
        }
        MyUser myUser = new MyUser(userEntity.getUsername(), userEntity.getPassword(), true, true, true, true, authorities);
        myUser.setFullname(userEntity.getFullname());
        return myUser;
    }
}
