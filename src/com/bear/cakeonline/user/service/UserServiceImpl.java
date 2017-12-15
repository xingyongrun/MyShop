package com.bear.cakeonline.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.Cart;
import com.bear.cakeonline.entity.CartItem;
import com.bear.cakeonline.entity.LoginUser;
import com.bear.cakeonline.entity.Orders;
import com.bear.cakeonline.user.dao.UserDaoImpl;

@Service
public class UserServiceImpl {
	
	@Resource
	private UserDaoImpl userDaoImpl;
	

	public List<LoginUser> listAllUser(){
		return this.userDaoImpl.findAll();
	}
	//public void saveLoginUser(LoginUser loginuser) {
	//	this.userDaoImpl.saveLoginUser(loginuser);
	//}
	public void saveCart(Cart cart){
		this.userDaoImpl.saveCart(cart);
	}
	public List<CartItem> listAllCartItem(int id){
		return this.userDaoImpl.sellectAll(id);
	}
	public Cake getCakeId(int id){
		return this.userDaoImpl.getCakeId(id);
	}
	public void saveCartItem(CartItem cartItem){
		this.userDaoImpl.saveCartItem(cartItem);
	}
	public void deleteCartItem(int id){
		this.userDaoImpl.deleteCartItem(id);
	}
	public CartItem getCartItemId(int id){
		return this.userDaoImpl.getCartItemId(id);
	}
	public void saveOrders(Orders orders){
		this.userDaoImpl.saveOrders(orders);
	}

}
