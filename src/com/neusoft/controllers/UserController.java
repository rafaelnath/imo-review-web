package com.neusoft.controllers;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.beans.Movie;
import com.neusoft.beans.Reviews;
import com.neusoft.beans.User;
import com.neusoft.services.UserService;

@Controller
public class UserController {
	
	@Resource
	public UserService service;
	
	//REGISTER
	@RequestMapping(value="/register.html", method=RequestMethod.GET)
	public String regInit(){
		return "register";
	}
	@RequestMapping(value="/register.html", method=RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("regBean") User regBean) {
		return service.registerUser(regBean);
	}
	
	//LOGIN
	@RequestMapping(value="/login.html", method=RequestMethod.GET)
	public String logInit(){
		return "login";
	}
	@RequestMapping(value="/login.html", method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("logBean") User logBean) {
		return service.login(logBean);
	}
	
	//HOME
	@RequestMapping(value="/home.html", method=RequestMethod.GET)
	public ModelAndView homeInit() {
		System.out.println("controller started");
		ModelAndView mav = service.selectAllMovies();
		System.out.println(mav.getModel());
		return mav;
	}
	@RequestMapping(value="/home.html", method=RequestMethod.POST)
	public ModelAndView backToHome(@ModelAttribute("home") User home) {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("msg", home.getUserName());
		return mav;
	}
	
	//MOVIE
	@RequestMapping(value="/movie.html", method=RequestMethod.GET)
	public String movieInit() {
		return "movie";
	}
	@RequestMapping(value="/movie.html", method=RequestMethod.POST)
	public ModelAndView movieMAV(@ModelAttribute("movBean") Movie movBean) {
		return service.moviePage(movBean.getMovieId(),movBean.getUserName());
	}
	
	//Review
	@RequestMapping(value="/review.html", method=RequestMethod.POST)
	public ModelAndView reviewInit(@ModelAttribute("revBean") Reviews revBean) {
		ModelAndView mav = new ModelAndView("review");
		mav.addObject("movieId",revBean.getMovieId());
		System.out.println("username: " + revBean.getReviewUserName());
		mav.addObject("userName",revBean.getReviewUserName());
		return mav;
	}
	@RequestMapping(value="/review.html", method=RequestMethod.GET)
	public ModelAndView reviewMAV(@ModelAttribute("revBean") Reviews revBean) {
		return service.addReview(revBean);
	}
	
	//ADMIN
	@RequestMapping(value="/admin.html", method=RequestMethod.GET)
	public String adminInit() {
		return "admin";
	}
	//**MANAGE-USER
	@RequestMapping(value="/manageUser", method=RequestMethod.GET)
	public ModelAndView manUserInit() {
		return service.selectAllUser();
	}
	@RequestMapping(value="/manageUser", method=RequestMethod.POST)
	public ModelAndView delUser(@ModelAttribute("delBean")User delBean) {
		return service.deleteUser(delBean.getUserId());
	}
	
	@RequestMapping(value="/editUser",method=RequestMethod.POST)
	public ModelAndView editUserInit(@ModelAttribute("editBean") User editBean) {
		return service.selectUserById(editBean.getUserId());
	}
	@RequestMapping(value="/editUser",method=RequestMethod.GET)
	public ModelAndView updateUser(@ModelAttribute("editBean") User editBean) {
		return service.updateUser(editBean);
	}
	//**ADD-MOVIE
	@RequestMapping(value="/addMovie.html", method=RequestMethod.GET)
	public String addMovInit(){
		return "addMovie";
	}
	@RequestMapping(value="/addMovie.html", method=RequestMethod.POST)
	public ModelAndView addMovie(@ModelAttribute("movieBean") Movie movieBean) {
		return service.addMovie(movieBean);
	}
	
}
