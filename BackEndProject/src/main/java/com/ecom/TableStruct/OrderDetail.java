package com.ecom.TableStruct;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity
public class OrderDetail {

		@Id
		@GeneratedValue
		public int orderId;
		public String username;
		public double totalAmount;
		public String shippingAddr;
		public String tranType;
		public String date;
		
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		public int getOrderId() {
			return orderId;
		}
		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public double getTotalAmount() {
			return totalAmount;
		}
		public void setTotalAmount(double totalAmount) {
			this.totalAmount = totalAmount;
		}
		public String getShippingAddr() {
			return shippingAddr;
		}
		public void setShippingAddr(String shippingAddr) {
			this.shippingAddr = shippingAddr;
		}
		public String getTranType() {
			return tranType;
		}
		public void setTranType(String tranType) {
			this.tranType = tranType;
		}
		
		

	}

