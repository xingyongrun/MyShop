package com.bear.cakeonline.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bear.cakeonline.admin.dao.AdminDaoImpl;
import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.CakeType;
import com.bear.cakeonline.entity.LoginAdmin;
import com.bear.cakeonline.entity.LoginUser;
import com.bear.cakeonline.entity.Orders;
import com.bear.cakeonline.entity.Page;

@Service
public class AdminServiceImpl {
	
	@Resource
	private AdminDaoImpl adminDaoImpl;
	
	public LoginAdmin Login(String name,String password){
		LoginAdmin lu = this.adminDaoImpl.findById(name);
		System.out.println(lu.getPassword());
		if(lu != null){
			if(lu.getPassword().equals(password)){
				return lu;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
	public List<LoginUser> listLoginUsers(){
		return this.adminDaoImpl.findAll();
	}
	public void deleteUser(int id){
		 adminDaoImpl.deleteUser(id);
	}
	public void addCake(Cake cake){
		this.adminDaoImpl.addCake(cake);
	}
	public void addCakeType(CakeType caketype){
		this.adminDaoImpl.addCakeType(caketype);
	}
	public void updateCake(Cake cake){
		this.adminDaoImpl.updateCake(cake);
	}
	public void deleteCake(int id){
		 adminDaoImpl.deleteCake(id);
	}
    public Page queryForPage(int currentPage,int pageSize) {
        Page page = new Page();       
        //总记录数
        int allRow = adminDaoImpl.getAllRowCount();
        //当前页开始记录
        int offset = page.countOffset(currentPage,pageSize);  
        //分页查询结果集
        List<Cake> list = adminDaoImpl.queryForPage(offset, pageSize); 
        page.setPageNo(currentPage);
        page.setPageSize(pageSize);
        page.setTotalRecords(allRow);
        page.setList(list);    
        return page;
    }
	public Cake getCakeId(int id){
		return this.adminDaoImpl.getCakeId(id);
	}
	public List<Orders> listOrders(){
		return this.adminDaoImpl.sellectAll();
	}
}
