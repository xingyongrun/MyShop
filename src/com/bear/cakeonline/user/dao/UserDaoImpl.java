package com.bear.cakeonline.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.Cart;
import com.bear.cakeonline.entity.CartItem;
import com.bear.cakeonline.entity.LoginUser;
import com.bear.cakeonline.entity.Orders;

@Repository
public class UserDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	public List<LoginUser> findAll(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from LoginUser");
		return q.list();
	}	
	//public void saveLoginUser(LoginUser loginuser) {
	//	this.sessionFactory.getCurrentSession().save(loginuser);
	//}
	public void saveCart(Cart cart){
		this.sessionFactory.getCurrentSession().save(cart);
	}
	public List<CartItem> sellectAll(int id){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from CartItem where cartid="+id);

		return q.list();
	}
	public Cake getCakeId(int id){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Cake where id=?");
		q.setParameter(0, id);
		return (Cake) q.uniqueResult();
	}
	public void saveCartItem(CartItem cartItem){
		this.sessionFactory.getCurrentSession().save(cartItem);
	}
	public void deleteCartItem(int id){
		Transaction tx = sessionFactory.getCurrentSession().beginTransaction();
		Query q = this.sessionFactory.getCurrentSession().createQuery("delete from CartItem where id=?");
		q.setParameter(0, id);
		q.executeUpdate();
		tx.commit();
	}
	public CartItem getCartItemId(int id){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from CartItem where id=?");
		q.setParameter(0, id);
		return (CartItem) q.uniqueResult();
	}
	public void saveOrders(Orders orders){
		this.sessionFactory.getCurrentSession().save(orders);
	}

}
