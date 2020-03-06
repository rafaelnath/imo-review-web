package com.neusoft.services;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.beans.Movie;
import com.neusoft.beans.Reviews;
import com.neusoft.beans.User;
import com.neusoft.dao.UserDao;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao dao;

	public ModelAndView selectAllReviews() {
		ModelAndView mav = new ModelAndView("movie");
		List<Reviews> lr = dao.selectAllReviews();
		ArrayList<Reviews> list_of_review = new ArrayList();
		list_of_review.addAll(lr);
		mav.addObject("reviews", dao.selectAllReviews());
		return mav;
	}

	public ModelAndView registerUser(User user) {
		String url;
		String errormsg = "";
		if (user.getUserName().equals("")) {
			url = "register";
			errormsg = "please enter your username";
		} else if (user.getPassword().equals("")) {
			url = "register";
			errormsg = "please enter your password";
		} else if (!user.getPassword().equals(user.getConfirmPassword())) {
			url = "register";
			errormsg = "confirm password doesn't match your password!";
		} else if (user.getUserEmail().equals("")) {
			url = "register";
			errormsg = "please enter your email";
		} else if (dao.registerUser(user) != 0) {
			url = "redirect:login.html";
		} else {
			url = "register";
			errormsg = "register failed, try again later :(";
		}

		ModelAndView mav;
		mav = new ModelAndView(url);
		mav.addObject("msg", errormsg);
		return mav;
	}

	public ModelAndView login(User user) {
		String url;
		String msg = "";
		if (!user.getPassword().equals(dao.checkPassword(user))) {
			url = "login";
			msg = "username/password wrong!";
		} else {
			if(user.getUserName().equals("admin")) {
				url = "redirect:admin.html";
			} else {
				url = "redirect:home.html";				
			}
			msg = user.getUserName();
		}
		
		System.out.println(msg);
		ModelAndView mav = new ModelAndView(url);
		mav.addObject("msg", msg);
		return mav;
	}

	public ModelAndView selectAllMovies() {
		ModelAndView mav = new ModelAndView("home");
		List<Movie> rs = dao.selectAllMovies();
		ArrayList<Movie> list_of_movie = new ArrayList();
		list_of_movie.addAll(rs);
		mav.addObject("movies", list_of_movie);
		/* mav.addObject("rating_avg",) */
		return mav;
	}
	
	public ModelAndView selectReviewById(int reviewId) {
		ModelAndView mav = new ModelAndView("");
		mav.addObject("user", dao.selectUserById(reviewId));
		return mav;
	}

	public ModelAndView moviePage(int movieId, String userName) {
		ModelAndView mav = new ModelAndView("movie");
		List<Reviews> rs = dao.selectReviewById(movieId);
		ArrayList<Reviews> list_of_review = new ArrayList();
		list_of_review.addAll(rs);
		mav.addObject("reviews", list_of_review);
		mav.addObject("movie_info", dao.selectMovieById(movieId));
		mav.addObject("userName",userName);
		
		return mav;
	}

	public ModelAndView addReview(Reviews review) {
		String url;
		String msg = "";

		ModelAndView mav;

		if (dao.addReview(review) != 0) {
			url = "revSuccess";
			msg = review.getReviewUserName();
		} else {
			url = "review";
			msg = "update failed, pls try again!";
		}

		mav = new ModelAndView(url);
		mav.addObject("msg", msg);
		mav.addObject("mId", review.getMovieId());
		return mav;
	}
	
	public ModelAndView selectAllUser() {
		ModelAndView mav = new ModelAndView("manageUser");
		List<User> lu = dao.selectAllUser();
		ArrayList<User> list_of_user = new ArrayList();
		list_of_user.addAll(lu);
		mav.addObject("user", list_of_user);
		return mav;
	}
	
	public ModelAndView selectUserById(int userId) {
		ModelAndView mav = new ModelAndView("editUser");
		mav.addObject("user", dao.selectUserById(userId));
		return mav;
	}
	
	public ModelAndView updateUser(User user) {
		String url="";
		String msg="";
		
		if(dao.updateUser(user)!=0) {
			url = "redirect:manageUser.html";
		} else {
			url = "editUser";
			msg = "update failed, pls try again :(";
		}
		
		ModelAndView mav = new ModelAndView(url);
		mav.addObject("msg",msg);
		return mav;
	}
	
	public ModelAndView deleteUser(int userId) {
		dao.deleteUser(userId);
		ModelAndView mav = new ModelAndView("redirect:manageUser.html");
		return mav;
	}
	
	public ModelAndView addMovie(Movie movie) {
		String url;
		String errormsg = "";
		
		if (dao.addMovie(movie) != 0) {
			url = "admin";
		} else {
			url = "addMovie";
			errormsg = "add movie failed, try again later :(";
		}

		ModelAndView mav = new ModelAndView(url);
		mav.addObject("msg", errormsg);
		return mav;
	}
}
