package com.yuntong.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.yuntong.common.Foundation;
import com.yuntong.model.User;
import com.yuntong.service.LoginService;

/**
 * Created by mylover on 7/24/15.
 */
@Controller
@RequestMapping(Foundation.MODULE_MAPPING_ROOT + "service/")
public class LoginController {

    private static Logger logger = LogManager.getLogger(LoginController.class.getName());

    @Autowired
    private LoginService loginService;

    @ResponseBody
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public ModelAndView login(
    		@RequestParam("username") String username,
    		@RequestParam("password") String password
    		){
    	logger.info("enter login");
    	String path = "";
    	if (!username.equals("")) {
    		User user = new User();
    		user.setUsername(username);
    		user.setPassword(password);
    		if(loginService.checkUser(user)){
    			path = "Y_Index.jsp";
    		}
    	} else {
    		path = Foundation.MODULE_MAPPING_ROOT + "service/"+"Y_Error.jsp";
    	}
    	
    	ModelAndView model=new ModelAndView();
		RedirectView redirectView = new RedirectView("/yuntong/" + path);
		redirectView.setExpandUriTemplateVariables(false);
		model.setView(redirectView);
    	logger.info("end login");
        return model;
    }
}
