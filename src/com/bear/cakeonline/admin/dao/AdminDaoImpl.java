package com.bear.cakeonline.admin.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.CakeType;
import com.bear.cakeonline.entity.LoginAdmin;
import com.bear.cakeonline.entity.LoginUser;
import com.bear.cakeonline.entity.Orders;



@Repository
public class AdminDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;

	public LoginAdmin findById(String name){
		return this.sessionFactory.getCurrentSession().get(LoginAdmin.class,name);
	}
	public List<LoginUser> findAll(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from LoginUser");
		return q.list();
	}
	public void deleteUser(int id){
		 Transaction tx = sessionFactory.getCurrentSession().beginTransaction();
		 Query q = sessionFactory.getCurrentSession().createQuery("delete from LoginUser where id=?");
		 q.setParameter(0, id);
		 q.executeUpdate();
		 tx.commit();
	}
	public void addCake(Cake cake){
		this.sessionFactory.getCurrentSession().save(cake);
	}
	public void addCakeType(CakeType caketype){
		this.sessionFactory.getCurrentSession().save(caketype);
	}
	public Cake getCakeId(int id){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Cake where id=?");
		q.setParameter(0, id);
		return (Cake) q.uniqueResult();
	}
	public void updateCake(Cake cake){		
		Transaction tx = sessionFactory.getCurrentSession().beginTransaction();
		Query q = this.sessionFactory.getCurrentSession().createQuery("update Cake set name=?,price=?,discountprice=?,description=? where id=?");
		q.setParameter(0, cake.getName());
		q.setParameter(1, cake.getPrice());
		q.setParameter(2, cake.getDiscountprice());
		q.setParameter(3, cake.getDescription());
		q.setParameter(4, cake.getId());
		q.executeUpdate();
		tx.commit();
	}	
	public void deleteCake(int id){
		 Transaction tx = sessionFactory.getCurrentSession().beginTransaction();
		 Query q = sessionFactory.getCurrentSession().createQuery("delete from Cake where id=?");
		 q.setParameter(0, id);
		 q.executeUpdate();
		 tx.commit();
	}
    public List<Cake> queryForPage(int offset, int length) {
        //查询所有的记录数
    	String hql = "from Cake";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);    
         query.setFirstResult(offset);
         query.setMaxResults(length);            
         return query.list(); 
        }
    //查询记录总数
    public int getAllRowCount(){
        int count=((Long) sessionFactory.getCurrentSession()
               .createQuery( "select count(*) from 	Cake").iterate().next()).intValue();
        return count;  
    }
    public List<Orders> sellectAll(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Orders");
		return q.list();
    } 
	
}
