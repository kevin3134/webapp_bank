package cn.service;

import cn.domain.TextData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ITextDataService {
    public List<TextData> findAll();

    public void saveData(TextData textData);

    public List<TextData> findSelect(int dir_1, int dir_2);

    public void deleteSelect(int id);
}
