package com.neusoft.services;

import org.springframework.web.servlet.ModelAndView;

import com.neusoft.beans.Movie;
import com.neusoft.beans.Reviews;
import com.neusoft.beans.User;

public interface UserService {
	ModelAndView selectAllReviews();
	ModelAndView registerUser(User user);
	ModelAndView login(User user);
	ModelAndView selectAllMovies();
	ModelAndView moviePage(int movieId, String userName);
	ModelAndView addReview(Reviews review);
	ModelAndView selectAllUser();
	ModelAndView selectUserById(int userId);
	ModelAndView selectReviewById(int reviewId);
	ModelAndView updateUser(User user);
	ModelAndView deleteUser(int userId);
	ModelAndView addMovie(Movie movie);
}
