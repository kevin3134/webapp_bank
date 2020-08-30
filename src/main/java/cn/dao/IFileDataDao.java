package cn.dao;

import cn.domain.FileData;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/*
账户Dao接口
 */
@Repository
public interface IFileDataDao {

    @Select("select * from fileData")
    public List<FileData> findAll();

    @Select("select * from fileData where dir_1 = #{dir_1} and dir_2 = #{dir_2}")
    public List<FileData> findSelect(@Param("dir_1") int dir_1,@Param("dir_2") int dir_2);

    @Insert(value="insert into fileData (time,txtdata,dir_1,dir_2,title,fileName,fileType) values (#{time},#{txtdata},#{dir_1},#{dir_2},#{title},#{fileName},#{fileType})")
    public void saveData(FileData fileData);

    @Delete("delete from fileData where id = #{id}")
    public void deleteSelect(@Param("id") int id);
}
