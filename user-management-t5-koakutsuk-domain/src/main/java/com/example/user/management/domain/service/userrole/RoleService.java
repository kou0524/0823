package com.example.user.management.domain.service.userrole;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.user.management.domain.model.Role;
import com.example.user.management.domain.repository.userrole.RoleRepository;

@Service
public class RoleService {

	@Inject
	RoleRepository RoleRepository;

	public void createRole(Role Role) {
		//登録する権限内容を取得して、リストに格納（ADMN　USER　AMDN/USER）
		ArrayList<String> roles = Role.getRoles();

		for (String role : roles) {
			//ユーザ権限をセッタ－で登録
			Role.setRole(role);
			//ユーザ権限をDBに登録
			RoleRepository.createRole(Role);
		}
	}
}
