package com.manage.classifiedcopy.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.classifiedcopy.model.SCarriercontentTab;

public interface CarriercontentDao extends Dao{

	public List<SCarriercontentTab> getcontentList(Integer id);

}
