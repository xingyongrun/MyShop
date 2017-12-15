package com.bear.cakeonline.user.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.Cart;
import com.bear.cakeonline.entity.CartItem;
import com.bear.cakeonline.entity.LoginUser;
import com.bear.cakeonline.entity.Orders;
import com.bear.cakeonline.user.service.UserServiceImpl;


@Controller
@RequestMapping("user")
public class UserController {
	
	@Resource
	private UserServiceImpl userServiceImpl;

	@RequestMapping("/regist")
	public String addUser(@RequestParam("username") String username,@RequestParam("password") String password,
			@RequestParam("telephone") int telephone,@RequestParam("address") String address) {
		List<LoginUser> userList = this.userServiceImpl.listAllUser();
		for(int i = 0 ;i < userList.size();i++) {
			if(userList.get(i).getusername().equals(username)) {
				return "index";
			}
		}
		LoginUser user = new LoginUser();
		Cart cart = new Cart();
		user.setTelephone(telephone);
		user.setAddress(address);
		user.setPassword(password);
		user.setusername(username);
		user.setCart(cart);
		cart.setLoginUser(user);
		this.userServiceImpl.saveCart(cart);
		return "index";
	}
	@RequestMapping(value = "login")
	public String login(@RequestParam("name") String name, @RequestParam("pwd") String pwd,Model model,HttpSession session){
		List<LoginUser> userList = userServiceImpl.listAllUser();
		for(int i = 0 ;i < userList.size(); i++) {
			if(userList.get(i).getusername().equals(name)&&userList.get(i).getPassword().equals(pwd)) {
				session.setAttribute("name",name);
				session.setAttribute("user", userList.get(i));
				break;
			}
		}
		return "index";	
	}
	@RequestMapping("/loginout")
	public String loginout(HttpSession session) {
		session.removeAttribute("name");
		session.removeAttribute("user");
		return "index";
	}
	@RequestMapping("cart")
	public String showCart(Model model,HttpServletRequest request){
		LoginUser user = (LoginUser) request.getSession().getAttribute("user");
		List<CartItem> list = this.userServiceImpl.listAllCartItem(user.getCart().getId());
		model.addAttribute("list", list);
		return "cart";
	}
	@RequestMapping("addcart")
	public String single(@RequestParam int cakeid,Model model,HttpServletRequest request){
		LoginUser user = (LoginUser) request.getSession().getAttribute("user");
		Date picktime = new Date();
		Cake cakeId = this.userServiceImpl.getCakeId(cakeid);
		Cart cart = new Cart();
		CartItem cartItem = new CartItem();
		cart.setId(user.getCart().getId());
		cartItem.setCart(cart);
		cartItem.setPrice(cakeId.getDiscountprice());
		cartItem.setName(cakeId.getName());
		cartItem.setImg(cakeId.getListimg());
		cartItem.setPicktime(picktime);
		this.userServiceImpl.saveCartItem(cartItem);
		model.addAttribute("cakeid",cartItem);
	    return "redirect:cart";
	   
	}
	@RequestMapping("deletecartitem")	
	public String deleteCartItem(@RequestParam int id){
		this.userServiceImpl.deleteCartItem(id);
		return "redirect:cart";
	}
	@RequestMapping("addorders")
	public String saveOrders(@RequestParam int id,Model model){
		CartItem cartItemId = this.userServiceImpl.getCartItemId(id);
		Orders orders = new Orders();
		orders.setOdate(cartItemId.getPicktime());
		orders.setCount(cartItemId.getPrice());
		this.userServiceImpl.saveOrders(orders);
		this.userServiceImpl.deleteCartItem(id);
		return "redirect:cart";
	}
}
