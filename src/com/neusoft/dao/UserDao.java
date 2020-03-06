package com.neusoft.dao;

import java.sql.ResultSet;
import java.util.List;

import com.neusoft.beans.Movie;
import com.neusoft.beans.Reviews;
import com.neusoft.beans.User;

public interface UserDao {
	public List<Reviews> selectAllReviews();
	public int registerUser(User register);
	public String checkPassword(User login);
	public List<Movie> selectAllMovies();
	public Movie selectMovieById(int movieId);
	public List<Reviews> selectReviewById(int movieId);
	public int addReview(Reviews addRev);
	public List<User> selectAllUser();
	public User selectUserById(int userId);
	public int updateUser(User user);
	public int deleteUser(int userId);
	public int addMovie(Movie movie);
}
