package Expense.tracker.backend.Repository;

import Expense.tracker.backend.Service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AuthRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

//    public void add(String name,String username,String email,String password,String phone){
//        String query="INSERT INTO expensetracker(name ,username,email,password,phone) VALUES(?,?,?,?,?)";
//        jdbcTemplate.update(query,name,username,email,password,phone);
//
//    }



}
