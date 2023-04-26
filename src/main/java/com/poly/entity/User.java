package com.poly.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedNativeQueries;
import jakarta.persistence.NamedNativeQuery;
import jakarta.persistence.NamedQueries;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "users")
@Getter
@Setter
@NamedQueries({
		@NamedQuery(name = "User.findUserLikedVideo", query = "SELECT o.user FROM Favorite o WHERE o.video.id=:vid AND o.user.id=:uid"),
		@NamedQuery(name = "User.findAllFavoriteUser", query = "SELECT new FavoriteUserDto(o.user.id, o.user.fullname, o.user.email, o.likeDate) FROM Favorite o WHERE o.video.id=:vid"),
		@NamedQuery(name = "User.findAllShareUser", query = "SELECT new ShareUserDto(o.user.id, o.user.email, o.emails, o.shareDate) FROM Share o WHERE o.video.id=:vid "), 
		@NamedQuery(name = "User.findByEmail", query = "SELECT o FROM User o WHERE o.email=:email"),
		@NamedQuery(name = "User.findAll", query = "SELECT o FROM User o"),
		@NamedQuery(name = "User.updateInfomation", query = "UPDATE User o SET o.fullname=:fullname, o.email=:email WHERE o.id=:uid"),})
public class User {
	@Id
	String id;
	@Column(name = "password")
	String password;
	@Column(name = "fullname")
	String fullname;
	@Column(name = "email")
	String email;
	@Column(name = "admin")
	boolean admin = false;
	@OneToMany(mappedBy = "user")
	List<Favorite> favorites;
	@OneToMany(mappedBy = "user")
	List<Share> shares;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isAdmin() {
		return admin;
	}
	public void setAdmin(boolean admin) {
		this.admin = admin;
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