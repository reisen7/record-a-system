package com.taoxiuxia.service;

import com.taoxiuxia.model.Newtable;
import com.taoxiuxia.model.NewtableExample;
import com.taoxiuxia.model.NewtableRq;
import com.taoxiuxia.util.PageRs;


import java.util.List;


/**
 * service接口
 * 默认提供的查询/更新/删除方法均针对主键，请根据业务需求自行添加相关方法，条件筛选使用Example，参考select方法（利用DAOMapper.***ByExample）
 * @author tools.49db.cn
 * @version 1.1
 * @date 2024-12-07
 */
public interface NewtableService {

	
	/**
	 * 根据主键查询
	 * @return
	 * @throws Exception
	 */
	Newtable selectByPrimaryKey(Integer key) throws Exception;
	
	

	/**
	 * 列表查询
	 * @param newtableRq
	 * @return
	 * @throws Exception
	 */
	PageRs select(NewtableRq newtableRq) throws Exception;


	/**
	 * 列表查询
	 * @param newtableRq
	 * @return
	 * @throws Exception
	 */
	List<Newtable> selectbyExample(NewtableExample example) ;


	/**
	 * 统计数量
	 * @param newtableRq
	 * @return
	 * @throws Exception
	 */
	long count(NewtableRq newtableRq) throws Exception;

	/**
	 * 添加新纪录
	 * @param newtableRq
	 * @return
	 * @throws Exception
	 */
	boolean add(NewtableRq newtableRq) throws Exception;

	/**
	 * 批量添加新纪录
	 * @param newtableRq
	 * @return int #成功条数
	 * @throws Exception
	 */
	int addBatch(List<NewtableRq> newtableRqList) throws Exception;

	/**
	 * 添加新纪录-null字段不会被设置
	 * @param newtableRq
	 * @return
	 * @throws Exception
	 */
	boolean addSelective(NewtableRq newtableRq) throws Exception;

	
	/**
	 * 更新记录
	 * @param newtableRq
	 * @return
	 * @throws Exception
	 */
	boolean updateByPrimaryKey(NewtableRq newtableRq) throws Exception;

	/**
	 * 更新记录-null字段不会被设置
	 * @param newtableRq
	 * @return
	 * @throws Exception
	 */
	boolean updateByPrimaryKeySelective(NewtableRq newtableRq) throws Exception;

	/**
	 * 删除记录-根据主键
	 * @param key
	 * @return
	 * @throws Exception
	 */
	boolean delByPrimaryKey(Integer key) throws Exception;
	

}
