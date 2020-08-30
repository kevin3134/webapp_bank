package cn.test;

import cn.dao.IAccountDao;
import cn.dao.IFileDataDao;
import cn.dao.ITextDataDao;
import cn.domain.Account;
import cn.domain.FileData;
import cn.domain.TextData;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.InputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

public class TestMybatis {

    /**
     * 测试查询
     * @throws Exception
     */
    @Test
    public void run1() throws Exception {
        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");

        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        IAccountDao dao = session.getMapper(IAccountDao.class);
        // 查询所有数据
        List<Account> list = dao.findAll();
        for(Account account : list){
            System.out.println(account);
        }
        // 关闭资源
        session.close();
        in.close();
    }

    /**
     * 测试保存
     * @throws Exception
     */
    @Test
    public void run2() throws Exception {
        Account account = new Account();
        account.setName("adm2");
        account.setPassword("password");
        account.setLevel(4);

        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        IAccountDao dao = session.getMapper(IAccountDao.class);

        // 保存
        dao.saveAccount(account);

        // 提交事务
        session.commit();

        // 关闭资源
        session.close();
        in.close();
    }

    /**
     * 测试查询
     * @throws Exception
     */
    @Test
    public void run3() throws Exception {
        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");

        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        ITextDataDao dao = session.getMapper(ITextDataDao.class);
        // 查询所有数据
        List<TextData> list = dao.findAll();
        for(TextData text : list){
            System.out.println(text.toString());
        }
        // 关闭资源
        session.close();
        in.close();
    }

    /**
     * 测试添加
     * @throws Exception
     */
    @Test
    public void run4() throws Exception {
        Timestamp time= new Timestamp(System.currentTimeMillis());//获取系统当前时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String timeStr = df.format(time);

        TextData textData = new TextData();
        textData.setDir_1(1);
        textData.setDir_2(1);
        textData.setTime(timeStr);
        textData.setTitle("title run4");
        textData.setTxtdata("txtdata run4");

        System.out.println(textData.getTime());

        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");

        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        ITextDataDao dao = session.getMapper(ITextDataDao.class);
        // 查询所有数据
        // 保存
        dao.saveData(textData);

        // 提交事务
        session.commit();

        // 关闭资源
        session.close();
        in.close();
    }

    /**
     * 测试查询
     * @throws Exception
     */
    @Test
    public void run5() throws Exception {
        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");

        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        ITextDataDao dao = session.getMapper(ITextDataDao.class);
        // 查询所有数据
        List<TextData> list = dao.findSelect(1,1);
        for(TextData text : list){
            System.out.println(text.toString());
        }
        // 关闭资源
        session.close();
        in.close();
    }

    /**
     * 测试删除
     * @throws Exception
     */
    @Test
    public void run6() throws Exception {
        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");

        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        ITextDataDao dao = session.getMapper(ITextDataDao.class);
        // 查询所有数据
        dao.deleteSelect(2);
        session.commit();
        // 关闭资源
        session.close();
        in.close();
    }

    /**
     * 测试查询 file
     * @throws Exception
     */
    @Test
    public void findAllFileData() throws Exception {
        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");

        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        IFileDataDao dao = session.getMapper(IFileDataDao.class);
        // 查询所有数据
        List<FileData> list = dao.findAll();
        for(FileData text : list){
            System.out.println(text.toString());
        }
        // 关闭资源
        session.close();
        in.close();
    }

    /**
     * 测试添加
     * @throws Exception
     */
    @Test
    public void AddFileData() throws Exception {
        Timestamp time= new Timestamp(System.currentTimeMillis());//获取系统当前时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String timeStr = df.format(time);

        FileData fileData = new FileData();
        fileData.setDir_1(0);
        fileData.setDir_2(0);
        fileData.setTime(timeStr);
        fileData.setTitle("title ");
        fileData.setTxtdata("txtdata ");
        fileData.setTxtdata("txtdata ");
        fileData.setFileName("filename");
        fileData.setFileType("filetype");

        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");

        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        IFileDataDao dao = session.getMapper(IFileDataDao.class);
        // 查询所有数据
        // 保存
        dao.saveData(fileData);

        // 提交事务
        session.commit();

        // 关闭资源
        session.close();
        in.close();
    }

    /**
     * 测试查询
     * @throws Exception
     */
    @Test
    public void findSelectFileData() throws Exception {
        // 加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");

        // 创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        // 创建SqlSession对象
        SqlSession session = factory.openSession();
        // 获取到代理对象
        IFileDataDao dao = session.getMapper(IFileDataDao.class);
        // 查询所有数据
        List<FileData> list = dao.findSelect(0,0);
        for(FileData text : list){
            System.out.println(text.toString());
        }
        // 关闭资源
        session.close();
        in.close();
    }

}
