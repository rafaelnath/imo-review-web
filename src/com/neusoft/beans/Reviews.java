package com.neusoft.beans;

public class Reviews {
	private int reviewId;
	private String reviewTitle;
	private int reviewRating;
	private String reviewComment;
	private String reviewUserName;
	private int movieId;
	
	public Reviews() {
		
	}

	public Reviews(int reviewId, String reviewTitle, int reviewRating, String reviewComment, String reviewUserName, int movieId) {
		this.reviewId = reviewId;
		this.reviewTitle = reviewTitle;
		this.reviewRating = reviewRating;
		this.reviewComment = reviewComment;
		this.reviewUserName = reviewUserName;
		this.movieId = movieId;
	}

	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public int getReviewRating() {
		return reviewRating;
	}

	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}

	public String getReviewComment() {
		return reviewComment;
	}

	public void setReviewComment(String reviewComment) {
		this.reviewComment = reviewComment;
	}

	public String getReviewUserName() {
		return reviewUserName;
	}

	public void setReviewUserName(String reviewUserName) {
		this.reviewUserName = reviewUserName;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	
	
}
