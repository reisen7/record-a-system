package com.taoxiuxia.mapper;

import java.util.List;

import com.taoxiuxia.model.Newtable;
import com.taoxiuxia.model.NewtableExample;
import org.apache.ibatis.annotations.Param;

/**
 * @author tools.49db.cn
 * @version 1.1
 * @date 2024-12-07
 */
public interface NewtableMapper {
    int countByExample(NewtableExample example);

    int deleteByExample(NewtableExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Newtable record);

    int insertSelective(Newtable record);

    List<Newtable> selectByExample(NewtableExample example);

    Newtable selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Newtable record, @Param("example") NewtableExample example);

    int updateByExample(@Param("record") Newtable record, @Param("example") NewtableExample example);

    int updateByPrimaryKeySelective(Newtable record);

    int updateByPrimaryKey(Newtable record);
}