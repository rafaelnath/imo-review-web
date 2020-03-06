package com.neusoft.beans;

public class Movie {
	private int movieId;
	private String movieTitle;
	private String movieGenre;
	private int movieDuration;
	private String movieSynopsis;
	private String movieTrailer;
	private String moviePoster;
	private String userName;
	
	public Movie() {
		
	}

	public Movie(int movieId, String movieTitle, String movieGenre, int movieDuration, String movieSynopsis, String movieTrailer, String moviePoster, String userName) {
		this.movieId = movieId;
		this.movieTitle = movieTitle;
		this.movieGenre = movieGenre;
		this.movieDuration = movieDuration;
		this.movieSynopsis = movieSynopsis;
		this.movieTrailer = movieTrailer;
		this.moviePoster = moviePoster;
		this.userName = userName;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getMovieTitle() {
		return movieTitle;
	}

	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}

	public String getMovieGenre() {
		return movieGenre;
	}

	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
	}

	public int getMovieDuration() {
		return movieDuration;
	}

	public void setMovieDuration(int movieDuration) {
		this.movieDuration = movieDuration;
	}

	public String getMovieSynopsis() {
		return movieSynopsis;
	}

	public void setMovieSynopsis(String movieSynopsis) {
		this.movieSynopsis = movieSynopsis;
	}

	public String getMovieTrailer() {
		return movieTrailer;
	}

	public void setMovieTrailer(String movieTrailer) {
		this.movieTrailer = movieTrailer;
	}

	public String getMoviePoster() {
		return moviePoster;
	}

	public void setMoviePoster(String moviePoster) {
		this.moviePoster = moviePoster;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
}
