package cn.service.impl;

import cn.dao.IAccountDao;
import cn.domain.Account;
import cn.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("accountService")
public class AccountServiceImpl implements IAccountService {

    @Autowired
    private IAccountDao dao;

    public void saveAccount(Account account) {
        System.out.println("业务层：保存账户...");
        dao.saveAccount(account);
    }

    public List<Account> findAll() {
        System.out.println("业务层：查询所有账户...");

        List<Account> list = dao.findAll();
        System.out.println("size of account list " + list.size());
        for(Account a : list){
            System.out.println(a.toString());
        }
        System.out.println("业务层：return...");
        return list;
    }
}
