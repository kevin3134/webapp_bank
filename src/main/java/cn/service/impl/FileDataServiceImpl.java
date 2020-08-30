package cn.service.impl;

import cn.dao.IFileDataDao;
import cn.domain.FileData;
import cn.service.IFileDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("fileDataService")
public class FileDataServiceImpl implements IFileDataService {

    @Autowired
    private IFileDataDao dao;

    public static boolean debug = true;

    public void saveData(FileData fileData) {
        System.out.println("业务层：保存fileData...");
        dao.saveData(fileData);
    }

    public List<FileData> findAll() {
        System.out.println("业务层：查询所有fileData...");

        List<FileData> list = dao.findAll();
        System.out.println("size of fileData list " + list.size());
        for(FileData a : list){
            System.out.println(a.toString());
        }
        System.out.println("业务层：return...");
        return list;
    }

    public List<FileData> findSelect(int dir_1, int dir_2){
        System.out.println("业务层：查询指定fileData...");
        List<FileData> list = dao.findSelect(dir_1, dir_2);
        System.out.println("size of fileData list " + list.size());
        for(FileData a : list){
            System.out.println(a.toString());
        }
        return list;
    }

    public void deleteSelect(int id){
        if(debug){
            System.out.println("业务层：删除fileData...");
        }
        dao.deleteSelect(id);
    }
}
