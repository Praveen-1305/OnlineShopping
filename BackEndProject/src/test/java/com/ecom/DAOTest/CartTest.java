package com.ecom.DAOTest;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecom.TableStruct.Cart;
import com.ecom.dao.CartDAO;

public class CartTest {
static CartDAO cartDAO;

	@BeforeClass
	public static void executeFirst()
	{
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecom");
		context.refresh();
		
		cartDAO=(CartDAO)context.getBean("cartDAO");
	}
    @Ignore
	@Test
	public void addCartTest()
	{
		Cart cart=new Cart();
		cart.setProductId(1);
		cart.setProductname("Mobile");
		cart.setQuantity(1);
		cart.setUsername("Deepika");
		cart.setPaymentStatus("NP");
		cart.setTotal(1);
		assertTrue("Problem in Cart Insertion",cartDAO.addCart(cart));
	}
	
	@Ignore
	@Test
	public void getCartTest()
	{
		assertNotNull("Problem in get Cart",cartDAO.getCart(2));
	}
	
	@Ignore
	@Test
	public void deleteCartTest()
	{
		Cart cart=cartDAO.getCart(2);
		assertTrue("Problem in Deletion:",cartDAO.deleteCart(cart));
	}

	@Test
	public void updateCartTest()
	{
		Cart cart=cartDAO.getCart(335);
		cart.setQuantity(4);
		assertTrue("Problem in Updation",cartDAO.updateCart(cart));
	}

	
}

