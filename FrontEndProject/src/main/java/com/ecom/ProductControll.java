package com.ecom;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ecom.TableStruct.Category;
import com.ecom.TableStruct.Product;
import com.ecom.TableStruct.Supplier;
import com.ecom.dao.CategoryDAO;
import com.ecom.dao.ProductDAO;
import com.ecom.dao.SupplierDAO;

@Controller
public class ProductControll
{
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value="/Dproduct")
	public String DisplayProduct(Model m) {
		
		List<Product> Prolist = productDAO.listProducts();
		m.addAttribute("listPro", Prolist);
		return "ProductDisplay";
	}

	
	@RequestMapping(value="/DescProduct/{productId}",method=RequestMethod.GET)
	public String ProductDescription(@PathVariable("productId") int proid, Model m)
		{
         Product product=productDAO.getProduct(proid);
		 List<Product> Prolist = productDAO.listProducts();
		 m.addAttribute("listPro", Prolist);
		 m.addAttribute("pro",product);
		return"ProductDesc";
		}

	
	@RequestMapping(value="/Iproduct")
	public String showProduct(Model m) {
		
		List<Product> Prolist = productDAO.listProducts();
		m.addAttribute("listPro", Prolist);
		List<Category> listcat=categoryDAO.getCategories();
		m.addAttribute("listCategories",listcat);
		List<Supplier> listsup = supplierDAO.getSupplier();
		m.addAttribute("listSupplier", listsup);

		for (Product pro :Prolist) {
			System.out.println(pro.getProductName() + ",");
		}
		return "InsertProduct";
	}

	@RequestMapping(value = "/AddProduct", method = RequestMethod.POST)
	public String InsertProduct(@RequestParam("proname") String proname, @RequestParam("prodesc") String prodesc,
			@RequestParam("proprice") int proprice,@RequestParam("prostock") int prostock,
			@RequestParam("categoryId") int catid,@RequestParam("supplierId") int supid,
			@RequestParam("pImage") MultipartFile pImage, Model m) 
	{
		Product product=new Product();
		product.setProductName(proname);
		product.setProdDesc(prodesc);
		product.setPrice(proprice);
		product.setStock(prostock);
		product.setCategoryId(catid);
		product.setSupplierId(supid);
        productDAO.addProduct(product);
        
        
		m.addAttribute(product);
    	
		String imagePath="F:/Program Files/eclipse workspace/FrontEndProject/src/main/webapp/resources/images/";
		imagePath=imagePath+String.valueOf(product.getProductId())+".jpg";
	    File image=new File(imagePath);
		
		if(!pImage.isEmpty())
		{

			try {
				byte[] buffer=pImage.getBytes();	
				FileOutputStream fos=new FileOutputStream(image);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(buffer);
				bs.close();

			}
			
			catch (Exception e)
			{
				System.out.println("Exception Arised:"+e);
				e.printStackTrace();
			}
			
		}
		else
		{
			System.out.println("Problem Occured in File Uploading");
		}

        List<Product> Prolist = productDAO.listProducts();
		m.addAttribute("listPro", Prolist);
		List<Category> listcat=categoryDAO.getCategories();
		m.addAttribute("listCategories",listcat);
		List<Supplier> listsup = supplierDAO.getSupplier();
		m.addAttribute("listSupplier", listsup);

		return "InsertProduct";
	}

	@RequestMapping(value="/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		
		productDAO.deleteProduct(product);
		
		String path="E:/eclipse-workspace2/frontend/src/main/webapp/resources/images/";
		path=path+String.valueOf(product.getProductId())+".jpg";
	    File image=new File(path);
		image.delete();
		
		 List<Product> Prolist = productDAO.listProducts();
			m.addAttribute("listPro", Prolist);
			List<Category> listcat=categoryDAO.getCategories();
			m.addAttribute("listCategories",listcat);
			List<Supplier> listsup = supplierDAO.getSupplier();
			m.addAttribute("listSupplier", listsup);

			return "InsertProduct";
	}

	@RequestMapping(value="/updateProduct/{productId}")
	public String updateProduct(@PathVariable("productId") int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		
		
		List<Product> Prolist = productDAO.listProducts();
		m.addAttribute("listPro", Prolist);
		List<Category> listcat=categoryDAO.getCategories();
		m.addAttribute("listCategories",listcat);
		List<Supplier> listsup = supplierDAO.getSupplier();
		m.addAttribute("listSupplier", listsup);
		m.addAttribute("productInfo",product);

		return "UpdateProduct";
	}
	
	@RequestMapping(value="/UpdateProductDB",method=RequestMethod.POST)
	public String updateProductDatabase(@RequestParam("productId") int proid,@RequestParam("proname") String proname,
			@RequestParam("prodesc") String prodesc,@RequestParam("proprice") int proprice,@RequestParam("prostock") int prostock,
			@RequestParam("categoryId") int catid,@RequestParam("supplierId") int supid,
			@RequestParam("pImage") MultipartFile pImage, Model m)
	{
		Product product=productDAO.getProduct(proid);
		product.setProductName(proname);
		product.setProdDesc(prodesc);
		product.setPrice(proprice);
		product.setStock(prostock);
		product.setCategoryId(catid);
		product.setSupplierId(supid);
		productDAO.updateProduct(product);
		
		String imagePath="F:/Program Files/eclipse workspace/FrontEndProject/src/main/webapp/resources/images/";
		imagePath=imagePath+String.valueOf(product.getProductId())+".jpg";
	    File oldimage=new File(imagePath);
		oldimage.delete();
	    
		File image=new File(imagePath);
		if(!pImage.isEmpty())
		{

			try {
				byte[] buffer=pImage.getBytes();	
				FileOutputStream fos=new FileOutputStream(image);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(buffer);
				bs.close();

			}
			
			catch (Exception e)
			{
				System.out.println("Exception Arised:"+e);
				e.printStackTrace();
			}
			
		}
		else
		{
			System.out.println("Problem Occured in File Uploading");
		}

		
		List<Product> Prolist = productDAO.listProducts();
		m.addAttribute("listPro", Prolist);
		List<Category> listcat=categoryDAO.getCategories();
		m.addAttribute("listCategories",listcat);
		List<Supplier> listsup = supplierDAO.getSupplier();
		m.addAttribute("listSupplier", listsup);

		return "InsertProduct";
	}
	
}




	