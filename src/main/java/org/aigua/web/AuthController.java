package org.aigua.web;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonElement;

import java.util.Map;
import java.util.HashMap;
import java.util.Date; 
import java.util.List;

import org.apache.shiro.subject.Subject;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.authc.UsernamePasswordToken;

import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.AuthenticationException;

import org.springframework.ui.ModelMap;


@Controller
@RequestMapping("/auth")
public class AuthController{
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(ModelMap model, HttpServletRequest request){
		model.addAttribute("title", "Login");
		return "auth/login";
	}	
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(ModelMap model, HttpServletRequest request){
		model.addAttribute("title", "Successfully Logged Out");
		return "auth/logout";
	}

	@RequestMapping(value="/failed", method=RequestMethod.GET)
	public String failed(ModelMap model, HttpServletRequest request){
		model.addAttribute("title", "Login");
		model.addAttribute("error", "Unable to log in, please try again");
		return "auth/login";
	}

	@RequestMapping(value="/403", method=RequestMethod.GET)
	public String fourOThree(ModelMap model, HttpServletRequest request){
		model.addAttribute("title", "403 : Access Denied");
		return "auth/403";
	}

}


















