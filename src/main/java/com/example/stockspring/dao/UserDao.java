package com.example.stockspring.dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.stockspring.model.User;

public interface UserDao extends JpaRepository<User,Integer> {

    /* public User insertUser(User user) throws ClassNotFoundException, SQLException;
     public User updateUser(User user);
     public List<User> getUserList();*/
	@Query("update User SET username=:username , password=:password , email=:email , mobilenumber=:mobilenumber where id=:id")
	public User updateUser(@Param("username") String username , @Param("password") String password, @Param("email") String email, @Param("mobilenumber") String mobilenumber,@Param ("id") int id);

	public User findById(int id);
}
