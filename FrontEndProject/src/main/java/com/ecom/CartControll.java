package com.ecom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecom.TableStruct.Cart;
import com.ecom.TableStruct.Product;
import com.ecom.dao.CartDAO;
import com.ecom.dao.ProductDAO;

@Controller
public class CartControll {
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/MoveCart",method=RequestMethod.POST)
    public String showCart( Model m) {
		
		/*Product product=productDAO.getProduct(proid);
		List<Cart> listCartItems= cartDAO.getCarts(null);
		m.addAttribute("cartlist", product);
		m.addAttribute("cart",listCartItems);
		
		Cart cart=new Cart();
		cart.setProductId(proid);
		cart.setQuantity(quantity);*/
		
	{
		return "Cart";
	}
	}
	/*@RequestMapping("/MoveCart/{productId}")
	public String addCartItem(@PathVariable("productId")int productId,@RequestParam("quantity")int quantity,HttpSession session, Model m)
		{
			Cart cart=new Cart();
			Product product=productDAO.getProduct(productId);
			
			String username=(String)session.getAttribute("username");
			cart.setProductId(productId);
			cart.setQuantity(quantity);
			cart.getCartId();
		    cart.setCartId(1);
			cart.setUsername(username);
			cart.setPaymentStatus("NP");
			cart.setTotal(quantity*product.getPrice());
		
			cartDAO.addCart(cart);
			 List<Cart> listCartItems= cartDAO.getCarts(username);
		    m.addAttribute("cartList",listCartItems);
		    m.addAttribute("cartItem",cart);
			
			return "Cart";
			
	}
	
	@RequestMapping("/updateCartItem/{cartItemId}")
	public String updateCartItem(@PathVariable("cartItemId") int cartItemId, @RequestParam("qty")int quantity,HttpSession session,Model m)
	{
		 Cart cartItem=cartDAO.getCart(cartItemId);
		 Product product=productDAO.getProduct(cartItem.getProductId());
	     
	     cartItem.setQuantity(quantity);
	     cartItem.setTotal(quantity*product.getPrice());
	     cartDAO.updateCart(cartItem);
	     String username= (String)session.getAttribute("username");
		 List<Cart> listCartItems= cartDAO.getCarts(username);
	     m.addAttribute("cartList",listCartItems);
	     m.addAttribute("grandTotal",this.grandTotal(listCartItems));
	     return "Cart";
		
    }
    
	@RequestMapping("/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId") int cartItemId, HttpSession session,Model m)
	{
	     Cart cartItem=cartDAO.getCart(cartItemId);
	     
	     
	     cartDAO.deleteCart(cartItem);
	     
	     String username=(String)session.getAttribute("username");
	     List<Cart> listCartItems= cartDAO.getCarts(username);
	     m.addAttribute("cartList",listCartItems);
	     m.addAttribute("grandTotal",this.grandTotal(listCartItems));
	     
		 return "Cart";
		
    }
	
	public int grandTotal(List<Cart> listCartItems)
	{
		int grandTotal=0;
		for(Cart cartItem: listCartItems)
		{
			grandTotal=grandTotal+cartItem.getQuantity()*(productDAO.getProduct(cartItem.getProductId()).getPrice());
			
		}
		return grandTotal;
	}*/
	
	
}

	


