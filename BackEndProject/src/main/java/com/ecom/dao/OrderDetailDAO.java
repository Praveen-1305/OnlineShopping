package com.ecom.dao;

import com.ecom.TableStruct.OrderDetail;

public interface OrderDetailDAO {
	
	public boolean confirmOrder(OrderDetail orderDetail);

}
