package com.example.t2009m1helloworld.Model;

import com.example.t2009m1helloworld.Entity.Account;

import java.util.List;

public interface AccountModel {
    boolean create(Account obj);
    boolean update(int id, Account obj);
    boolean delete(int id);
    Account findById(int id);
    Account findByUsername(String username);
    List<Account> findAll();
}
