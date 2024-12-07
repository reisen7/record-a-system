package com.taoxiuxia.controller;

import com.taoxiuxia.model.Newtable;
import com.taoxiuxia.model.NewtableRq;
import com.taoxiuxia.service.NewtableService;

import com.taoxiuxia.util.PageRs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * controller
 * @author tools.49db.cn
 * @version 1.1
 * @date 2024-12-07
 */
@RestController
@RequestMapping("/NewTableController")//todo 使用前请设置路径
public class NewtableController {
	@Autowired
	private NewtableService newtableService;

	
	/**
	 * 根据主键查询
	 */
	@RequestMapping("/detail")
	public Newtable selectByPrimaryKey(@RequestBody Integer key) throws Exception {
		return newtableService.selectByPrimaryKey(key);
	}
	
	

	@RequestMapping("/list")
	public PageRs list(@RequestBody NewtableRq newtableRq) throws Exception {
		return newtableService.select(newtableRq);
	}

	@RequestMapping("/add")
	public boolean add(@RequestBody NewtableRq newtableRq) throws Exception {
		return newtableService.add(newtableRq);
	}

	@RequestMapping("/addBatch")
	public Integer addBatch(@RequestBody List<NewtableRq> newtableRqList)throws Exception {
		return newtableService.addBatch(newtableRqList);
	}

	@RequestMapping("/addSelective")
	public boolean addSelective(@RequestBody NewtableRq newtableRq) throws Exception {
		return newtableService.addSelective(newtableRq);
	}

	
	//TODO 若需要根据条件更新，请自行添加相关service方法(利用DAO.mapper的updateByExample方法)
	@RequestMapping("/update")
	public boolean updateByPrimaryKey(@RequestBody NewtableRq newtableRq) throws Exception {
		return newtableService.updateByPrimaryKey(newtableRq);
	}

	@RequestMapping("/updateSelective")
	public boolean updateByPrimaryKeySelective(@RequestBody NewtableRq newtableRq) throws Exception {
		return newtableService.updateByPrimaryKeySelective(newtableRq);
	}

	//TODO 若需要根据条件删除，请自行添加相关service方法(利用DAO.mapper的deleteByExample方法)
	@RequestMapping("/del")
	public boolean del(@RequestBody Integer key) throws Exception {
		return newtableService.delByPrimaryKey(key);
	}
	

}
