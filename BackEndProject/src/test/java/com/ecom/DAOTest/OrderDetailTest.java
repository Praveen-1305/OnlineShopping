package com.ecom.DAOTest;

import static org.junit.Assert.assertTrue;

import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecom.TableStruct.OrderDetail;
import com.ecom.dao.OrderDetailDAO;

public class OrderDetailTest {

	static OrderDetailDAO orderDetailDAO;

	@BeforeClass
	public static void executeFirst()
	{
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecom");
		context.refresh();
		
		orderDetailDAO=(OrderDetailDAO)context.getBean("orderDetailDAO");
	}
	
	@Test
	public void saveOrderTest()
	{
		OrderDetail orderDetail=new OrderDetail();
	
		orderDetail.setTranType("CC");
		orderDetail.setDate(String.format("%tc",new Date()));
		orderDetail.setUsername("Name");
		orderDetail.setShippingAddr("NP");
		orderDetail.setTotalAmount(1);
		assertTrue("Problem in OrderDetail Insertion",orderDetailDAO.confirmOrder(orderDetail));
	}

	
	
}
