package com.ecom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.TableStruct.Supplier;
import com.ecom.dao.SupplierDAO;

@Controller
public class SupplierControll {

	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value="/Supplier")

	public ModelAndView supplierPage()
	{
		List<Supplier> listsup=supplierDAO.getSupplier();
		for(Supplier sup : listsup)
		{
	    System.out.println("supplier id : "+sup.getSupplierId());
		System.out.println("supplier name : "+sup.getSupplierName());
		System.out.println("supplier desc : "+sup.getSupplierAddress());
		}
		
		ModelAndView mav=new ModelAndView("Supplier", "listSupplier", listsup);
		return mav;
	}
	@RequestMapping(value = "/InsertSupplier", method = RequestMethod.POST)
	public ModelAndView insertSupplierData(@RequestParam("Name") String name, @RequestParam("Addr") String addr)
	{
		Supplier supplier = new Supplier();
		supplier.setSupplierName(name);
		supplier.setSupplierAddress(addr);

		supplierDAO.addSupplier(supplier);
		List<Supplier> listsup=supplierDAO.getSupplier();
		
		for(Supplier sup : listsup)
		{
		System.out.println("Added");
		System.out.println("supplier id : "+sup.getSupplierId());
		System.out.println("supplier name : "+sup.getSupplierName());
		System.out.println("supplier desc : "+sup.getSupplierAddress());
		}
		
		ModelAndView mav=new ModelAndView("Supplier", "listSupplier", listsup);
		return mav;
	}
	@RequestMapping("/deleteSupplier/{supplierId}")
	public ModelAndView deleteSupplier(@PathVariable("supplierId") int supplierId)
	{
		Supplier supplier=supplierDAO.getSupplier(supplierId);
		
		supplierDAO.deleteSupplier(supplier);
		List<Supplier> listsup=supplierDAO.getSupplier();
		System.out.println("Deleted");		
		ModelAndView mav=new ModelAndView("Supplier", "listSupplier", listsup);
		return mav;

	}
	@RequestMapping("/updateSupplier/{supplierId}")
	public String updateSupplier(@PathVariable("supplierId") int supplierId,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(supplierId);
	
		List<Supplier> listsup=supplierDAO.getSupplier();
		m.addAttribute("listSupplier",listsup);
		m.addAttribute("supplierInfo",supplier);
		
		return "UpdateSupplier";
		
	}
	
	@RequestMapping(value="/UpdateSupplier",method=RequestMethod.POST)
	public ModelAndView updateSupplierInDB(@RequestParam("Id") int id,@RequestParam("Name") String name, @RequestParam("Addr") String addr)
	{
		Supplier supplier=supplierDAO.getSupplier(id);
		supplier.setSupplierName(name);
		supplier.setSupplierAddress(addr);

		supplierDAO.updateSupplier(supplier);
		List<Supplier> listsup=supplierDAO.getSupplier();
		System.out.println("Updated");
		ModelAndView mav=new ModelAndView("Supplier", "listSupplier", listsup);
		return mav;
	}
}



