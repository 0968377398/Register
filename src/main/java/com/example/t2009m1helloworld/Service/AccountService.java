package com.example.t2009m1helloworld.Service;

import com.example.t2009m1helloworld.Entity.Account;
import com.example.t2009m1helloworld.Entity.SHA512Hasher;
import com.example.t2009m1helloworld.Entity.myenum.AccountStatus;
import com.example.t2009m1helloworld.Model.AccountModel;
import com.example.t2009m1helloworld.Model.MySqlAccountModel;

public class AccountService {
    private AccountModel accountModel;

    public AccountService() {
        accountModel = new MySqlAccountModel();
    }

    public Account register(Account account) {
        String salt = SHA512Hasher.randomString(15);
        String hashedPassword = SHA512Hasher.encode(account.getPassword(), salt);
        String savedPassword = hashedPassword + "." + salt;
        if(accountModel.create(Account.AccountBuilder.anAccount()
                .withFullName(account.getFullName())
                .withRoleId(account.getRoleId())
                .withUsername(account.getUsername())
                .withEmail(account.getEmail())
                .withPhoneNumber(account.getPhoneNumber())
                .withStatus(AccountStatus.ACTIVE)
                .withPassword(savedPassword)
                .build())) {
            return account;
        }
        return null;
    }

    public Account login(String username, String password) {
        Account account = accountModel.findByUsername(username);
        if(account != null && SHA512Hasher.checkPassword(account.getPassword(), password)) {
            return account;
        }
        return null;
    }
}
