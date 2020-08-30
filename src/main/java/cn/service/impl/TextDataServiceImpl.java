package cn.service.impl;

import cn.dao.ITextDataDao;
import cn.domain.TextData;
import cn.service.ITextDataService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("textDataService")
public class TextDataServiceImpl implements ITextDataService {

    @Autowired
    private ITextDataDao dao;

    public static boolean debug = true;

    public void saveData(TextData textData) {
        System.out.println("业务层：保存textData...");
        dao.saveData(textData);
    }

    public List<TextData> findAll() {
        System.out.println("业务层：查询所有TextData...");

        List<TextData> list = dao.findAll();
        System.out.println("size of TextData list " + list.size());
        for(TextData a : list){
            System.out.println(a.toString());
        }
        System.out.println("业务层：return...");
        return list;
    }

    public List<TextData> findSelect(int dir_1, int dir_2){
        System.out.println("业务层：查询指定TextData...");
        List<TextData> list = dao.findSelect(dir_1, dir_2);
        System.out.println("size of TextData list " + list.size());
        for(TextData a : list){
            System.out.println(a.toString());
        }
        return list;
    }

    public void deleteSelect(int id){
        if(debug){
            System.out.println("业务层：删除textData...");
        }
        dao.deleteSelect(id);
    }
}
