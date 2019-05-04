package com.ecom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecom.TableStruct.Cart;
import com.ecom.TableStruct.Product;
import com.ecom.dao.CartDAO;
import com.ecom.dao.ProductDAO;

@Controller
public class CartControll {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CartDAO cartDAO;

	@RequestMapping(value = "/MoveCart/{productId}",method = RequestMethod.POST)
	public String addCart(@PathVariable("productId") int proid,Model m) {
		Product product=productDAO.getProduct(proid);
		m.addAttribute("pro",product);
		String username="World";
		
		Cart cart=new Cart();
		cart.setProductId(proid);
		cart.setQuantity(1);
		cart.setUsername(username);
		cart.setProductname(product.getProductName());
		cart.setPaymentStatus("NP");
		cart.setTotal(product.getPrice());
		cartDAO.addCart(cart);
		List<Cart> listCarts=cartDAO.getCarts(username);
		m.addAttribute("listCarts", listCarts);
		m.addAttribute("cart",cart);
 
		return "Cart";
	}
}
