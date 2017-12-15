package com.bear.cakeonline.admin.controller;



import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bear.cakeonline.admin.service.AdminServiceImpl;
import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.CakeType;
import com.bear.cakeonline.entity.LoginAdmin;
import com.bear.cakeonline.entity.LoginUser;
import com.bear.cakeonline.entity.Orders;
import com.bear.cakeonline.entity.Page;



@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Resource
	private AdminServiceImpl adminServiceImpl;

	
	@RequestMapping("login")
	public String login(@RequestParam("adminname") String name,@RequestParam("password")String pwd,
			HttpSession session) {
		LoginAdmin lu = this.adminServiceImpl.Login(name,pwd);
		if(null!=lu){
			session.setAttribute("adminname", name);
			return "adminmainger";
		}else{
			return "adminlogin";
		}
	}
	@RequestMapping("userlist")
	public String list(Model model){
		List<LoginUser>list = this.adminServiceImpl.listLoginUsers();
		model.addAttribute("list",list);
		return "adminuser";
	}
	@RequestMapping("cakelist")
	//找到所有的记录并实现了分页
	public String findAll(HttpServletRequest request,Model model) { 
	        String pageNo = request.getParameter("pageNo");
	        if (pageNo == null) {
	            pageNo = "1";
	        }
	        Page page = this.adminServiceImpl.queryForPage(Integer.valueOf(pageNo), 6);
	        //request.setAttribute("page", page);
	        model.addAttribute("page", page);
	        List<Cake> list = page.getList();
	        model.addAttribute("list", list);
	    return "admincake";
	}
	@RequestMapping("deleteuser")
	public String deleteUser(@RequestParam int id){
		adminServiceImpl.deleteUser(id);
		return "redirect:userlist";
		}
	@RequestMapping("doedit")
	public String doUpdate(@RequestParam int id,Model model){
		model.addAttribute("cake", adminServiceImpl.getCakeId(id));
		return "admincakeedit";
	}
	@RequestMapping("edit")
	public String upDate(Cake cake){
		adminServiceImpl.updateCake(cake);
		return "redirect:cakelist";
	}
	@RequestMapping("addcake")
	public String addCake(@RequestParam String name,@RequestParam int price,@RequestParam String description,
			@RequestParam int discountprice,@RequestParam String img1,@RequestParam String img2,@RequestParam String img3,
			@RequestParam String listimg,@RequestParam String typename, 
			@RequestParam MultipartFile upfile,Model model,HttpServletRequest request) throws IOException{
		Cake cake = new Cake();
		CakeType cakeType = new CakeType();
		cake.setName(name);
		cake.setPrice(price);
		cake.setDescription(description);
		cake.setDiscountprice(discountprice);
		cake.setImg1(img1);
		cake.setImg2(img2);
		cake.setImg3(img3);
		cake.setListimg(listimg);
		cakeType.setName(typename);
		cake.setCakeType(cakeType);
		this.adminServiceImpl.addCakeType(cakeType);
		this.adminServiceImpl.addCake(cake);
		model.addAttribute("cake", cake);
/*
		String rootPath=request.getServletContext().getRealPath("/");
		System.out.println("1");
		try{
			FileCopyUtils.copy(upfile.getBytes(), 
					new File(rootPath+"images",upfile.getOriginalFilename()));
			System.out.println("2");
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("3");
	*/
		/*
		ServletContext context = request.getServletContext();
		String realPath = context.getRealPath("/images");
		
			String filename = upfile.getOriginalFilename();
			File file = new File(realPath + "/" + filename);
			cake.setListimg(filename);
			byte[] bytes = listimg.getBytes();
			FileOutputStream fos = new FileOutputStream(file);
			fos.write(bytes);
			fos.flush();
			fos.close();
		*/
		return "redirect:cakelist";
	}
	@RequestMapping("deletecake")
	public String deleteCake(@RequestParam int id){
		adminServiceImpl.deleteCake(id);
		return "redirect:cakelist";
	}
	@RequestMapping("orders")
	public String sellectAll(Model model){
		List<Orders> list = this.adminServiceImpl.listOrders();
		model.addAttribute("list", list);
		return "adminorders";
	}
		
}
