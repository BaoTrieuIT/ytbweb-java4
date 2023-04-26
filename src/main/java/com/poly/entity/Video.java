package com.poly.entity;

import java.util.List;

import org.hibernate.annotations.Nationalized;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.NamedNativeQueries;
import jakarta.persistence.NamedNativeQuery;
import jakarta.persistence.NamedQueries;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "videos")
@Getter
@Setter
@NamedQueries({ @NamedQuery(name = "Video.findByKeyword", query = "Select o From Video o Where o.title Like :keyword"),
		@NamedQuery(name = "Video.findFavoriteByUser", query = "SELECT o.video FROM Favorite o WHERE o.user.id=:id"),
		@NamedQuery(name = "Video.findAll", query = "SELECT o FROM Video o  ORDER BY newid()"),
		@NamedQuery(name="Video.getJustWatchVideo", query="SELECT o FROM Video o WHERE o.id IN :ids"),
		@NamedQuery(name = "Video.random10", query = "SELECT o FROM Video o ORDER BY newid()"),
})


public class Video {
	@Id
	String id;
	
	@Column(name = "tittle")
	String title;
	
	@Column(name = "poster")
	String poster;
	
	@Column(name = "description")
	String description;
	
//	@Column(name = "shortDescription")
//	String shortDescription;
//	
	@Column(name = "views")
	int views = 0;
	
	@Column(name = "active")
	boolean active = true;
	
	@OneToMany(mappedBy = "video", cascade = CascadeType.ALL)
	List<Favorite> favorites;
	
	@JsonBackReference(value = "vi-sh")
	@OneToMany(mappedBy = "video", cascade = CascadeType.ALL)
	List<Share> shares;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

//	public String getShortDescription() {
//		return shortDescription;
//	}
//
//	public void setShortDescription(String shortDescription) {
//		this.shortDescription = shortDescription;
//	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public List<Favorite> getFavorites() {
		return favorites;
	}

	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}

	public List<Share> getShares() {
		return shares;
	}

	public void setShares(List<Share> shares) {
		this.shares = shares;
	}
	
}
