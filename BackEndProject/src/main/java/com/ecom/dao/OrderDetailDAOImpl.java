package com.ecom.dao;

import java.util.List;

import javax.persistence.criteria.Order;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.TableStruct.Cart;
import com.ecom.TableStruct.OrderDetail;

@Repository("orderDetailDAO")
public class OrderDetailDAOImpl implements OrderDetailDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public boolean confirmOrder(OrderDetail orderDetail) { 
		
		try
		{
			sessionFactory.getCurrentSession().save(orderDetail);
			return true;
		}
		catch(Exception e)
		{
		
			return false;
	    }

}

	@Override
	public List<OrderDetail> getOrders(String username) {
		try
		{
			Session session=sessionFactory.openSession();
			Query query = session.createQuery("from OrderDetail where Username=:username");
			query.setParameter("username",username);
			List<OrderDetail> Orderlist=(List<OrderDetail>)query.list();
			return Orderlist;
		}
		catch(Exception e){
			return null;
		}
	
}

	@Override
	public OrderDetail getOrderId(int id) {
		try{
			Session session=sessionFactory.openSession();
			OrderDetail orderDetail=(OrderDetail)session.get(OrderDetail.class,id);
			session.close();
			return orderDetail;
			}
			
			catch(Exception e){
				return null;
			}
		
}
}