package com.manage.equalification.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.equalification.model.SSocialfamilyTab;

public interface SocialfamilyDao extends Dao{

	List<SSocialfamilyTab> getSfList(Integer id);

}
