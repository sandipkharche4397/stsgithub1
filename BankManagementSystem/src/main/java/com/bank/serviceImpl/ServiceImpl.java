package com.bank.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.Repositary.HomeRepositary;
import com.bank.ServiceI.ServiceI;
import com.bank.model.Account;
@Service
public class ServiceImpl implements ServiceI{
	@Autowired
	HomeRepositary bdi;
	public void saveAccount(Account a) {
		
		bdi.save(a);
	}
	public List<Account> getUsers() {
		
		return (List<Account>) bdi.findAll();
	}
	public List<Account> logincheck(int  id, String passward) {
		
		return  bdi.findAllByIdAndPassward(id, passward);
	}
	
	@Override
	public void deleteAccount(Account a) {
	bdi.delete(a);
		
	}
	@Override
	public Account editAccount(int id) {
		
		return bdi.findAllById(id) ;
	}
	@Override
	public List showSingleData(String fname, String passward) {
		
		return bdi.findAllByFnameAndPassward(fname, passward);
	}
	@Override
	public Iterable displayAllData() {
	
		return bdi.findAll();
	}
	@Override
	public void Deletedata(int id) {
		System.err.println("DELETE RECORD CALL impl");
		bdi.deleteById(id);
		
		
	}

}
