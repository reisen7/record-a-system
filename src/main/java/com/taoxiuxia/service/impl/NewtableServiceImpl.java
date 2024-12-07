package com.taoxiuxia.service.impl;

import com.taoxiuxia.mapper.NewtableDAOMapper;
import com.taoxiuxia.model.Newtable;
import com.taoxiuxia.model.NewtableExample;
import com.taoxiuxia.model.NewtableRq;
import com.taoxiuxia.service.NewtableService;
import com.taoxiuxia.util.Page;
import com.taoxiuxia.util.PageIn;
import com.taoxiuxia.util.PageRs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import com.alibaba.fastjson.JSONObject;

import java.util.List;

/**
 * service实现
 * @author tools.49db.cn
 * @version 1.1
 * @date 2024-12-07
 */
@Service("NewtableService")
public class NewtableServiceImpl implements NewtableService {


	private NewtableDAOMapper newtableDAOMapper;

	public NewtableDAOMapper getNewtableDAOMapper() {
		return newtableDAOMapper;
	}

	@Autowired
	public void setNewtableDAOMapper(NewtableDAOMapper newtableDAOMapper) {
		this.newtableDAOMapper = newtableDAOMapper;
	}

	//默认主键倒叙
	private static final String DEFAULT_SORT = "desc";

	
	@Override
	public Newtable selectByPrimaryKey(Integer key) throws Exception {
		return newtableDAOMapper.selectByPrimaryKey(key);
	}
	

	//注意，若不提供分页参数，可能导致查询出大量数据！
	@Override
	public PageRs select(NewtableRq newtableRq) throws Exception {
		PageRs pageRs = new PageRs();
		pageRs.setPageIn(newtableRq);

		NewtableExample example = genExample(newtableRq);
		long count = newtableDAOMapper.countByExample(example);
		pageRs.setTotal(count);
		if(count>0){
		pageRs.setData(newtableDAOMapper.selectByExample(example));
		}
		return pageRs;
	}

	@Override
	public List<Newtable> selectbyExample(NewtableExample example) {
		return newtableDAOMapper.selectByExample(example);
	}


	@Override
	public long count(NewtableRq newtableRq) throws Exception {
		NewtableExample example = genExample(newtableRq);
		return newtableDAOMapper.countByExample(example);
	}

	private NewtableExample genExample(NewtableRq newtableRq) throws Exception {
		NewtableExample example = null;
		if(!StringUtils.isEmpty(newtableRq)){
			example = new NewtableExample();
			NewtableExample.Criteria criteria = example.createCriteria();
			Class son = NewtableRq.class;
			Class father = PageIn.class;
			if(father.isAssignableFrom(son) && newtableRq.isPageEnable()){
				example.setPage(new Page(newtableRq.getBegin(),newtableRq.getPageSize()));
			}
			
			example.setOrderByClause("id "+DEFAULT_SORT);
			
			/**
			 * 若需要时间查询条件，请自行在dto中加入类似startTime、endTime字段，并在此增加相应条件
			 * 例：
			 * if(!StringUtils.isEmpty(dto.getStartTime()){
			 *     criteria.andCreateTimeGreaterThanOrEqualTo(dto.getStartTime());
			 * }
			 * if(!StringUtils.isEmpty(dto.getEndTime()){
			 * 	   criteria.andCreateTimeLessThanOrEqualTo(dto.getEndTime());
			 * }
			 */
			
			if(!StringUtils.isEmpty(newtableRq.getId())){
				criteria.andIdEqualTo(newtableRq.getId());
			}
			if(!StringUtils.isEmpty(newtableRq.getMoney())){
				criteria.andMoneyEqualTo(newtableRq.getMoney());
			}
			if(!StringUtils.isEmpty(newtableRq.getCid())){
				criteria.andCidEqualTo(newtableRq.getCid());
			}
			if(!StringUtils.isEmpty(newtableRq.getAddTime())){
				criteria.andAddTimeEqualTo(newtableRq.getAddTime());
			}
			if(!StringUtils.isEmpty(newtableRq.getDetails())){
				criteria.andDetailsEqualTo(newtableRq.getDetails());
			}
			if(!StringUtils.isEmpty(newtableRq.getUserId())){
				criteria.andUserIdEqualTo(newtableRq.getUserId());
			}
			if(!StringUtils.isEmpty(newtableRq.getType())){
				criteria.andTypeEqualTo(newtableRq.getType());
			}
			
		}
		return example;
	}

	@Override
	public boolean add(NewtableRq newtableRq) throws Exception {
		return newtableDAOMapper.insert(JSONObject.toJavaObject((JSONObject)JSONObject.toJSON(newtableRq),Newtable.class))==1?true:false;
	}

	@Override
	public int addBatch(List<NewtableRq> newtableRqList) throws Exception {
		return newtableDAOMapper.insertBatch(JSONObject.parseArray(JSONObject.toJSONString(newtableRqList),Newtable.class));
	}

	@Override
	public boolean addSelective(NewtableRq newtableRq) throws Exception {
		return newtableDAOMapper.insertSelective(JSONObject.toJavaObject((JSONObject)JSONObject.toJSON(newtableRq),Newtable.class))==1?true:false;
	}


	
	@Override
	public boolean updateByPrimaryKey(NewtableRq newtableRq) throws Exception {
		return newtableDAOMapper.updateByPrimaryKey(JSONObject.toJavaObject((JSONObject)JSONObject.toJSON(newtableRq),Newtable.class))==1?true:false;
	}

	@Override
	public boolean updateByPrimaryKeySelective(NewtableRq newtableRq) throws Exception {
		return newtableDAOMapper.updateByPrimaryKeySelective(JSONObject.toJavaObject((JSONObject)JSONObject.toJSON(newtableRq),Newtable.class))==1?true:false;
	}

	@Override
	public boolean delByPrimaryKey(Integer key) throws Exception {
		return newtableDAOMapper.deleteByPrimaryKey(key)==1?true:false;
	}
	
}
