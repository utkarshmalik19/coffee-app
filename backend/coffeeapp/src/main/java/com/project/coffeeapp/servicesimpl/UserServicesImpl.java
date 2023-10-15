package com.project.coffeeapp.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.coffeeapp.dao.UserRepository;
import com.project.coffeeapp.pojo.User;
import com.project.coffeeapp.services.UserServices;

@Service
public class UserServicesImpl implements UserServices {
private UserRepository userRepository;

    @Autowired
	public UserServicesImpl(UserRepository userRepository) {
	this.userRepository = userRepository;
}

	@Override
	public void registerUser(User user) {
		// TODO Auto-generated method stub
		userRepository.save(user);

	}

	@Override
	public boolean authenticateUser(String email, String password) {
		// TODO Auto-generated method stub
		User user = userRepository.findByEmail(email);
		if(user == null) {
			return false;
		}
		return password.equals(user.getPassword());
	}

	@Override
	public User getUserByEmail(String email) {
		// TODO Auto-generated method stub
		User user = userRepository.findByEmail(email);
		return user;
	}

}
