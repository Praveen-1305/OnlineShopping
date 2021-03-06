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
	public String PaymentConfirm(@RequestParam("radios") String mode,@RequestParam("ShippingAdress") String Address,HttpSession session)
	{ 
		String username=(String)session.getAttribute("username");
		List<Cart> listCartItems=cartDAO.getCarts(username);
		
		for(Cart Cart1:listCartItems)
		{
	         Cart Cart2=cartDAO.getCart(Cart1.getCartId());
	         Cart2.setPaymentStatus("P");
	         cartDAO.updateCart(Cart2);
		}
	      	List<Cart> listPaidCarts=cartDAO.getCarts(username);
				OrderDetail orderDetail=new OrderDetail();
				orderDetail.setTranType(mode);
				orderDetail.setDate(String.format("%tc",new Date()));
				orderDetail.setUsername(username);
				orderDetail.setShippingAddr(Address);
				orderDetail.setTotalAmount(grandTotal(listPaidCarts));
			    orderDetailDAO.confirmOrder(orderDetail);       	
		
	         return "ThankYou";
		
	}

	@RequestMapping("/click")
	public String ClickBill(HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("username");
			
		List<Cart> listPaidCarts=cartDAO.paidCarts(username);
		m.addAttribute("listPaidCarts",listPaidCarts);
		m.addAttribute("grandtotal",grandTotal(listPaidCarts));
		
		List<Cart> listpaidCarts=cartDAO.paidCarts(username);
		
		for(Cart cart3:listpaidCarts)
		{
				Cart cart4=cartDAO.getCart(cart3.getCartId());
				cart4.setPaymentStatus("Paid");
				cartDAO.updateCart(cart4);
		}
		List<OrderDetail> listOrderDetail=orderDetailDAO.getOrders(username);
		int id=0;
		for(OrderDetail orderdetail1:listOrderDetail)
		{
				if(orderdetail1.getOrderId()>id) {
					id=orderdetail1.getOrderId();
				}
		}
		
	
		OrderDetail orderdetail2=orderDetailDAO.getOrderId(id); 
		m.addAttribute("orderdetail",orderdetail2);

		return "Receipt";
		
	}
	@RequestMapping("/credit")
	public String showCredit()
	{
		return "Credit";
	}
	@RequestMapping("/CreditConfirm")
	public String showCredit(HttpSession session,Model m)
	{   
		
		String username=(String)session.getAttribute("username");
		List<Cart> listCartItems=cartDAO.getCarts(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandtotal",this.grandTotal(listCartItems));
		//m.addAttribute("Paymentmethod","Credit/Debit");
			return "OrderR";
	}
	
	@RequestMapping("/online")
	public String showOnline()
	{
		return "Netbanking";
	}
	@RequestMapping("/OnlineConfirm")
	public String showOnline(HttpSession session,Model m)
	{   
		
		String username=(String)session.getAttribute("username");
		List<Cart> listCartItems=cartDAO.getCarts(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandtotal",this.grandTotal(listCartItems));
		//m.addAttribute("Paymentmethod","Net Banking");
			return "OrderR";
	}
	
}



