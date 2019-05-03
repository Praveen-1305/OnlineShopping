package com.ecom.dao;

import java.util.List;

import com.ecom.TableStruct.Cart;

public interface CartDAO {
	public boolean addCart(Cart cart);
    public Cart getCart(int cartId);
	public boolean deleteCart(Cart cart);
	public boolean updateCart(Cart cart);
	public List<Cart> getCarts(String username);

}
