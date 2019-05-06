package com.ecom.dao;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.TableStruct.Order;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO {

	@Autowired
   	SessionFactory sessionFactory;
    
	@Transactional
	@Override
	public boolean ConfirmOrder(Order order) {

			try
			{
				sessionFactory.getCurrentSession().save(order);
				return true;
			}
			catch(Exception e)
			{
				return false;
			}
		
		}
}
