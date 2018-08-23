package com.example.user.management.domain.service.account;

import javax.inject.Inject;


import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.user.management.domain.model.Account;
import com.example.user.management.domain.repository.account.AccountRepository;

@Service
public class AccountService {
	@Inject
	AccountRepository accountRepository;

	@Inject
	PasswordEncoder passwordEncoder;
	
	public void create(Account account, String password) {
		account.setState("ACTV");
		account.setPassword(passwordEncoder.encode(password));
		accountRepository.create(account);
	}
}
