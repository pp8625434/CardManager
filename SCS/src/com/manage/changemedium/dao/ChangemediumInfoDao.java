package com.manage.changemedium.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.changemedium.model.SChangemediumInfoTab;

public interface ChangemediumInfoDao extends Dao{

	List<SChangemediumInfoTab> getCminfoList(Integer id);

}
