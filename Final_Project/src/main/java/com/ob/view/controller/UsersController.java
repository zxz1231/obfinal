package com.ob.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ob.biz.service.UsersService;

@Controller
public class UsersController {
	@Autowired
	private UsersService usersService;
	

	
	
}
