package com.bear.cakeonline.cake.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.cakeonline.cake.service.CakeServiceImpl;
import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.CakeType;
import com.bear.cakeonline.entity.Page;

@Controller
@RequestMapping("cake")
public class CakeController {

	@Resource
	private CakeServiceImpl cakeServiceImpl;

	/*
	@RequestMapping("list")
	public String list(Model model){
		List<Cake> list = this.cakeServiceImpl.listAll();
		model.addAttribute("list",list);
		return "products";
	}
	*/
	@RequestMapping("list")
	//找到所有的记录并实现了分页
	public String findAll(HttpServletRequest request) {   
			HttpSession session = request.getSession();
	        String pageNo = request.getParameter("pageNo");
	        if (pageNo == null) {
	            pageNo = "1";
	        }
	        Page page = cakeServiceImpl.queryForPage(Integer.valueOf(pageNo), 6);
	        //request.setAttribute("page", page);
	        session.setAttribute("page", page);
	        List<Cake> list = page.getList();
	        session.setAttribute("list", list);
	        List<CakeType> typelist = cakeServiceImpl.typelistAll();
	        session.setAttribute("typelist", typelist);
	    return "products";
	}
	@RequestMapping("single")
	public String single(@RequestParam int cakeid,Model model){
		Cake cakeId = this.cakeServiceImpl.getCakeId(cakeid);
		model.addAttribute("cakeid",cakeId);
		return "single";
	}
	
	
}
