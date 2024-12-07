package com.taoxiuxia.mapper;

import com.taoxiuxia.model.Newtable;

import java.util.List;

/**
 * @author tools.49db.cn
 * @version 1.1
 * @date 2024-12-07
 */
public interface NewtableDAOMapper extends NewtableMapper {
    int insertBatch(List<Newtable> list);
}