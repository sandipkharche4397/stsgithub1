package com.bank.ServiceI;

import java.util.List;

import com.bank.model.Account;

public interface ServiceI {

	void saveAccount(Account a);

	List<Account> getUsers();

	List<Account> logincheck(int accNo, String passward);

	void deleteAccount(Account a);

	Account editAccount(int accNo);

	List showSingleData(String fname, String passward);

	Iterable displayAllData();

	void Deletedata(int id);

}
