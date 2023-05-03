package com.bank.Repositary;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.bank.model.Account;

public interface HomeRepositary extends CrudRepository<Account, Integer> {

	public List<Account> findAllByIdAndPassward(int id,String passward);
	public Account findAllById(int id);
	public List<Account> findAllByFnameAndPassward(String Fname,String passward);
	

}
