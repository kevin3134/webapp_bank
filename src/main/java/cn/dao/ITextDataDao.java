package cn.dao;

import cn.domain.TextData;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/*
账户Dao接口
 */
@Repository
public interface ITextDataDao {

    @Select("select * from textData")
    public List<TextData> findAll();

    @Select("select * from textData where dir_1 = #{dir_1} and dir_2 = #{dir_2}")
    public List<TextData> findSelect(@Param("dir_1") int dir_1,@Param("dir_2") int dir_2);

    @Insert(value="insert into textData (time,txtdata,dir_1,dir_2,title) values (#{time},#{txtdata},#{dir_1},#{dir_2},#{title})")
    public void saveData(TextData textData);

    @Delete("delete from textData where id = #{id}")
    public void deleteSelect(@Param("id") int id);
}
