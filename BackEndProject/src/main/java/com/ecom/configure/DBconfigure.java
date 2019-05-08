package com.ecom.configure;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.ecom.TableStruct.Cart;
import com.ecom.TableStruct.Category;
import com.ecom.TableStruct.OrderDetail;
import com.ecom.TableStruct.Product;
import com.ecom.TableStruct.Supplier;
import com.ecom.TableStruct.User;
import com.ecom.dao.CartDAO;
import com.ecom.dao.CartDAOImpl;
import com.ecom.dao.CategoryDAO;
import com.ecom.dao.CategoryDAOImpl;
import com.ecom.dao.OrderDetailDAO;
import com.ecom.dao.OrderDetailDAOImpl;
import com.ecom.dao.ProductDAO;
import com.ecom.dao.ProductDAOImpl;
import com.ecom.dao.SupplierDAO;
import com.ecom.dao.SupplierDAOImpl;
import com.ecom.dao.UserDAO;
import com.ecom.dao.UserDAOImpl;


@Configuration
@ComponentScan("com.ecom")
@EnableTransactionManagement

public class DBconfigure {
	@Bean(name = "dataSource")
public DataSource getDataSource() {

DriverManagerDataSource dataSource = new DriverManagerDataSource();   
dataSource.setDriverClassName("org.h2.Driver");
dataSource.setUrl("jdbc:h2:tcp://localhost/F:/Program Files/H2 Database/Table 4/Backend");	
dataSource.setUsername("praveen");
dataSource.setPassword("praveen");
 
System.out.println("---Data Source Created---");
    return dataSource;
}

private Properties getHibernateProperties() {	

	Properties properties = new Properties();
    	properties.put("hibernate.show_sql", "true");
	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	properties.put("hibernate.hbm2ddl.auto", "update");	
	return properties;

}

@Autowired
@Bean(name = "sessionFactory")
public SessionFactory getSessionFactory(DataSource dataSource) {
	
	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource); 
	sessionBuilder.addProperties(getHibernateProperties());
	sessionBuilder.addAnnotatedClasses(Category.class);
	sessionBuilder.addAnnotatedClasses(Supplier.class);          
    sessionBuilder.addAnnotatedClasses(Product.class);
    sessionBuilder.addAnnotatedClasses(Cart.class);
    sessionBuilder.addAnnotatedClasses(User.class);
    sessionBuilder.addAnnotatedClasses(OrderDetail.class);
    
	return sessionBuilder.buildSessionFactory();
}


@Bean(name = "transactionManager")
public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) 
{
HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

return transactionManager;
}

@Bean(name="categoryDAO")
public CategoryDAO getCategoryDAO()
{
	System.out.println("----Category DAO Implementation---");
	return new CategoryDAOImpl();

}
@Bean(name="supplierDAO")
public SupplierDAO getSupplierDAO()
{
	System.out.println("----Supplier DAO Implementation---");
	return new SupplierDAOImpl();

}
@Bean(name="productDAO")
public ProductDAO getProductDAO()
{
	System.out.println("----Product DAO Implementation---");
	return new ProductDAOImpl();

}

@Bean(name="cartDAO")
public CartDAO getCartDAO()
{
	System.out.println("----Cart DAO Implementation---");
	return new CartDAOImpl();

}
@Bean(name="userDAO")
public UserDAO getUserDAO()
{
	System.out.println("----User DAO Implementation---");
	return new UserDAOImpl();

}

@Bean(name="orderDetailDAO")
public OrderDetailDAO getOrderDAO()
{
	System.out.println("----Order DAO Implementation---");
	return new OrderDetailDAOImpl();

}


}
