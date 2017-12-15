package com.bear.cakeonline.cake.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.CakeType;
import com.bear.cakeonline.entity.Page;

@Repository
public class CakeDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public Cake getCakeId(int id){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Cake where id=?");
		q.setParameter(0, id);
		return (Cake) q.uniqueResult();
	}
	/*
	public List<Cake> sellectAll(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Cake");
		return q.list();
	}
	*/
    /**
  * 分页查询
  * @param hql 查询的条件
  * @param offset 开始记录
  * @param length 一次查询几条记录
  * @return 返回查询记录集合
  */
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
	
    public List<CakeType> sellectAll(){
    	Query q = this.sessionFactory.getCurrentSession().createQuery("from CakeType");
    	return q.list();
    } 
}
