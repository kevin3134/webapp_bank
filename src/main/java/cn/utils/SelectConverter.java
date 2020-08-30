package cn.utils;

import org.springframework.core.convert.converter.Converter;

public class SelectConverter implements Converter<Object, Integer> {

    @Override
    public Integer convert(Object o) {
//        if(o == null) {
//            throw new RuntimeException("参数不能为空");
//        }else if(!(o instanceof String)){
//            throw new RuntimeException("错误输入类型");
//        }
//
//        try {
//            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
//            Date date = df.parse((String)o);
//            return date;
//        } catch (Exception e) {
//            throw new RuntimeException("类型转换错误");
//        }
        System.out.println("this is select converter");
        System.out.println(o);
        return null;
    }

}
