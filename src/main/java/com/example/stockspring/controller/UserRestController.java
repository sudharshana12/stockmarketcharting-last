package com.example.stockspring.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.stockspring.dao.UserDao;
import com.example.stockspring.model.User;

@RestController
public class UserRestController {
@Autowired
UserDao userdao;

@GetMapping("/updateUser/{id}/{username}/{password}")
public void update(@PathVariable("id") int id,@PathVariable("username") String us, @PathVariable("password") String ps)
{
	User user = userdao.findById(id);
	System.out.println(user);
	user.setUsername(us);
	user.setPassword(ps);
	userdao.save(user);
}

}
