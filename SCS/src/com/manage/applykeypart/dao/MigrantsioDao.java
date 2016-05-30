package com.manage.applykeypart.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.applykeypart.model.SMigrantsioTab;

public interface MigrantsioDao extends Dao{

	List<SMigrantsioTab> getMList(Integer id);

}
