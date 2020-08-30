package cn.dao;

import cn.domain.Account;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/*
账户Dao接口
 */
@Repository
public interface IAccountDao {

    @Select("select * from account")
    public List<Account> findAll();

    @Insert(value="insert into account (name,password,level) values (#{name},#{password},#{level})")
    public void saveAccount(Account account);
}
