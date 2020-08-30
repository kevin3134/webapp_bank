package cn.service;

import cn.domain.FileData;


import java.util.List;

public interface IFileDataService {

    public List<FileData> findAll();

    public List<FileData> findSelect(int dir_1, int dir_2);

    public void saveData(FileData fileData);

    public void deleteSelect(int id);
}
