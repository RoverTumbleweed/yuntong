package com.yuntong.service;

import com.yuntong.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface UserService {

	public void addOneUser (User addOne);
	
	public List<User> findAllUsers();

	Page<User> findAllUser(Pageable pageable);
}
