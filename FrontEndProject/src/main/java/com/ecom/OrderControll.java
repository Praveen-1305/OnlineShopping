package com.ecom;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecom.TableStruct.Cart;
import com.ecom.TableStruct.OrderDetail;
import com.ecom.dao.CartDAO;
import com.ecom.dao.OrderDetailDAO;
import com.ecom.dao.ProductDAO;

@Controller
public class OrderControll {

	

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@RequestMapping(value="/confirm")
	public String ConfirmOrder(HttpSession session,Model m)
	{ 
		String username=(String)session.getAttribute("username");
		List<Cart> listCartItems=cartDAO.getCarts(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandtotal",this.grandTotal(listCartItems));
	
		return "Order";
	}
	
	public double grandTotal(List<Cart> listCartItems)
	{
		double grandTotal=0;
		for(Cart cartItem: listCartItems)
		{
			grandTotal=grandTotal+cartItem.getQuantity()*(productDAO.getProduct(cartItem.getProductId()).getPrice());
		}
		return grandTotal;
	}

	public double grandTotals(List<Cart> listPaidCarts)
	{

		double grandTotal1=0,grandTotal=0;
		try {
		for(Cart cart: listPaidCarts)
		{
			grandTotal1=grandTotal1+cart.getQuantity()*(productDAO.getProduct(cart.getProductId()).getPrice());
			
		}
		int grandTotal2=(int)(grandTotal1*100);
		grandTotal=(double)grandTotal2/100; 
		}
		catch(Exception e) {
			System.out.println("total error");
		}
		
		return grandTotal;
	}

	@RequestMapping("/PaymentConfirm")
	public String PaymentConfirm(@RequestParam("mode") String mode,@RequestParam("ShippingAdress") String Address,HttpSession session)
	{ 
		String username=(String)session.getAttribute("username");
		List<Cart> listCartItems=cartDAO.getCarts(username);
		
		for(Cart Cart1:listCartItems)
		{
	         Cart Cart2=cartDAO.getCart(Cart1.getCartId());
	         Cart2.setPaymentStatus("P");
	         cartDAO.updateCart(Cart2);
		}
		
				OrderDetail orderDetail=new OrderDetail();
				orderDetail.setTranType(mode);
				orderDetail.setDate(String.format("%tc",new Date()));
				orderDetail.setUsername(username);
				orderDetail.setShippingAddr(Address);
				double grandTotal=0;
				for(Cart cartItem: listCartItems)
				{
					grandTotal=grandTotal+cartItem.getQuantity()*(productDAO.getProduct(cartItem.getProductId()).getPrice());
				}
				orderDetail.setTotalAmount(grandTotal);
			    orderDetailDAO.confirmOrder(orderDetail);
		        
		
		
		
	         return "ThankYou";
		
	}

	@RequestMapping("/click")
	public String ClickBill(HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("username");
		
		List<OrderDetail> listOrder=orderDetailDAO.getOrders(username);
		m.addAttribute("listorder");
		
		
		List<Cart> listPaidCarts=cartDAO.paidCarts(username);
		m.addAttribute("grandtotal",grandTotal(listPaidCarts));	
		m.addAttribute("cartList", listPaidCarts);
		
		return "Receipt";
		
	}


}



