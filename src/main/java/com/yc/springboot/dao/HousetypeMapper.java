package com.yc.springboot.dao;

import com.yc.springboot.bean.Housetype;
import com.yc.springboot.bean.HousetypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HousetypeMapper {
    long countByExample(HousetypeExample example);

    int deleteByExample(HousetypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Housetype record);

    int insertSelective(Housetype record);

    List<Housetype> selectByExample(HousetypeExample example);

    Housetype selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Housetype record, @Param("example") HousetypeExample example);

    int updateByExample(@Param("record") Housetype record, @Param("example") HousetypeExample example);

    int updateByPrimaryKeySelective(Housetype record);

    int updateByPrimaryKey(Housetype record);
}