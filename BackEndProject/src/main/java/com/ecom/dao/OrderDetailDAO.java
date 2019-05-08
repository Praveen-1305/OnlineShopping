package com.ecom.dao;

import java.util.List;

import com.ecom.TableStruct.OrderDetail;

public interface OrderDetailDAO {
	
	public boolean confirmOrder(OrderDetail orderDetail);
	
	public List<OrderDetail> getOrders(String username);

	public OrderDetail getOrderId(int id);

}
