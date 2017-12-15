package com.bear.cakeonline.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart {
	private int id;
	private LoginUser loginUser;
	private Set cartItem = new HashSet<CartItem>();
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="loginuserId")
	public LoginUser getLoginUser() {
		return loginUser;
	}
	public void setLoginUser(LoginUser loginUser) {
		this.loginUser = loginUser;
	}

	@OneToMany(mappedBy="cart",targetEntity=CartItem.class, 
            cascade=CascadeType.ALL)
	public Set getCartItem() {
		return cartItem;
	}
	public void setCartItem(Set cartItem) {
		this.cartItem = cartItem;
	}

}
