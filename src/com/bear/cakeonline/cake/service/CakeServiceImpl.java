package com.bear.cakeonline.cake.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.cakeonline.cake.dao.CakeDaoImpl;
import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.CakeType;
import com.bear.cakeonline.entity.Page;

@Service
@Transactional(readOnly = true)
public class CakeServiceImpl {

	@Resource
	private CakeDaoImpl cakeDaoImpl;
	/*
	public List<Cake> listAll(){
		return this.cakeDaoImpl.sellectAll();
	}
	*/
	
    /**
     * 分页查询 
     * @param currentPage 当前页号：现在显示的页数
     * @param pageSize 每页显示的记录条数
     * @return 封闭了分页信息(包括记录集list)的Bean
     * */
    public Page queryForPage(int currentPage,int pageSize) {
        Page page = new Page();       
        //总记录数
        int allRow = cakeDaoImpl.getAllRowCount();
        //当前页开始记录
        int offset = page.countOffset(currentPage,pageSize);  
        //分页查询结果集
        List<Cake> list = cakeDaoImpl.queryForPage(offset, pageSize); 
        page.setPageNo(currentPage);
        page.setPageSize(pageSize);
        page.setTotalRecords(allRow);
        page.setList(list);    
        return page;
    }
	public Cake getCakeId(int id){
		return this.cakeDaoImpl.getCakeId(id);
	}

	public List<CakeType> typelistAll(){
		return this.cakeDaoImpl.sellectAll();
	}
}
