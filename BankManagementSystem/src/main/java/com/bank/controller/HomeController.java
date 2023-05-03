package com.bank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bank.ServiceI.ServiceI;
import com.bank.model.Account;

@CrossOrigin("*")
@RestController
public class HomeController {
	
	@Autowired
	ServiceI bsi;
	
	@RequestMapping(value="/save/{balance}", method = RequestMethod.POST)
	public String saveAccount( @RequestBody Account a,@PathVariable int balance)
	{
		if(a.getBalance()>=1000) {
		
		bsi.saveAccount(a);
		
		return "Data save Successfully";
		}
		else {
			return "minimum balance is 1000";
		}
		}
		

	@RequestMapping(value = "/delete/{id}",method = RequestMethod.DELETE)
	public  String Delete(@PathVariable int id) {
		System.err.println("DELETE RECORD CALL");
		
		bsi.Deletedata(id);
		
		return "delete data Successfully";	
	}
	
	
	@GetMapping("/getData/{fname}/{passward}")
	public List getSingleData(@PathVariable("fname") String fname, @PathVariable("passward") String passward)
	{
		
		System.out.println("aaa");
		List st=bsi.showSingleData(fname, passward);
		return st;
	}
	
	@RequestMapping(value = "/getAllData",method = RequestMethod.GET)
	public Iterable getAllData()
	{
		Iterable i=bsi.displayAllData();
		
		return i;
	}
	
	@PutMapping(value = "/update/{id}")
	public String updateStudent(@PathVariable int id,@RequestBody Account a)
	{
		bsi.saveAccount(a);
		return "Update Data successfully";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@RequestMapping(value ="/update")
//	public String updateAccount(@ModelAttribute Account a,Model m )
//	{
//
//
//		bsi.saveAccount(a);
//		m.addAttribute("data", bsi.getUsers());
//		return "success2";
//	}
	
	
//	@RequestMapping(value = "/newbankaccount")
//	public String prebankaccopen()
//	{
//		return "newbankaccount";
//	}
	
	
	
//	@RequestMapping(value="/login")
//	public String LoginUser(@PathVariable String  fname,@PathVariable String passward,Model m)
//	{
//		if(("admin")==(fname) &&"admin".equals(passward))
//		{
//			List<Account> users=bsi.getUsers();
//			m.addAttribute("data",users);
//			return "success";
//		}
//		else {
//			List<Account> users=bsi.logincheck(accNo,passward);
//			if(!users.isEmpty())
//			{
//				m.addAttribute("data", users);
//				return "success2";
//				
//			}
//			else
//			{
//				return"login";
//			}
//			
//		}
//	}

//	@RequestMapping(value="/delete")
//	public String deleteAccount(@ModelAttribute Account a,Model m)
//	{
//		bsi.deleteAccount(a);
//		List<Account> users=bsi.getUsers();
//		m.addAttribute("data", users);
//		return "success";
//	}
//	@RequestMapping(value ="/edit")
//	public String editBike(@RequestParam int accNo, Model m )
//	{
//		Account a=	bsi.editAccount(accNo);
//		m.addAttribute("a", a);
//		return "edit";
//	}
}
