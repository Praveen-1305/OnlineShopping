package com.ecom.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.TableStruct.Cart;



@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public boolean addCart(Cart cart) {
		// TODO Auto-generated method stub
		try
		{
		sessionFactory.getCurrentSession().save(cart);
	    
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}
		
		
		@Override
		public Cart getCart(int cartId) {
			try{
			Session session=sessionFactory.openSession();
			Cart cart=(Cart)session.get(Cart.class,cartId);
			session.close();
			return cart;
			}
			
			catch(Exception e){
				return null;
			}

			
		}
		@Override
		public boolean deleteCart(Cart cart) {
			try
			{
				sessionFactory.getCurrentSession().delete(cart);
				return true;
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised:"+e);
				return false;
			}
			
		}
		@Override
		public boolean updateCart(Cart cart) 
	    {
			try
			{
				sessionFactory.getCurrentSession().update(cart);
				return true;
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised:"+e);
				return false;
			}

			
		}
		@Override
		public List<Cart> getCarts(String username) {
			try
			{
				Session session=sessionFactory.openSession();
				Query query = session.createQuery("from Cart where Username=:username and paymentStatus='NP'");
				query.setParameter("username",username);
				List<Cart> listCart=(List<Cart>)query.list();
				return listCart;
			}
			catch(Exception e){
				return null;
			}
		

		}


		@Override
		public List<Cart> paidCarts(String username) {
			
			try
			{
				Session session=sessionFactory.openSession();
				Query query = session.createQuery("from Cart where Username=:username and paymentStatus='P'");
				query.setParameter("username",username);
				List<Cart> listCart=(List<Cart>)query.list();
				return listCart;
			}
			catch(Exception e){
				return null;
			}
		}
			
	}