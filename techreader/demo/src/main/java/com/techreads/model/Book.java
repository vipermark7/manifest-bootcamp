package com.techreads.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long id;
	String title;
	String authorName;
	String description;
	double rating;
	String date;
	String availability;
	String pictureUrl;

	public Book() {
	}

	public Book(String title, String pictureUrl, String description, String authorName, String date,
			String availability) {
		this.title = title;
		this.description = description;
		this.authorName = authorName;
		this.availability = availability;
		this.date = date;
		this.pictureUrl = pictureUrl;
	}

	public Book(double rating) {
		this.rating = rating;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setPictureURL(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}

	public String getPictureUrl() {
		return pictureUrl;
	}

}
