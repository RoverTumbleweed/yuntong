package com.yuntong.service.impl;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yuntong.model.User;
import com.yuntong.repository.jdbc.FoundationJdbc;
import com.yuntong.repository.jpa.UserRepository;
import com.yuntong.service.LoginService;

/**
 * Created by mylover on 7/22/15.
 */
@Service
public class LoginServiceImpl implements LoginService {

    private static Logger logger = LogManager.getLogger(LoginServiceImpl.class.getName());

    @Autowired
    private  FoundationJdbc foundationJdbc;
    
    @Autowired
    private UserRepository userRepository;

    
    @Override
    public boolean checkUser(User user) {
        logger.info("checkUser begin");
        User findUser = new User();
        int type = 1;
        if(type == 1)
        	findUser =	foundationJdbc.findUserByUsername(user.getUsername());
        else 
        	findUser = userRepository.findByUsername(user.getUsername());
        if (findUser.getPassword().equals(user.getPassword())) {
        	logger.info("checkUser end true");
        	return true;
        } else {
        	logger.info("checkUser end false");
        	return false;	
        }
    	
    }

}
