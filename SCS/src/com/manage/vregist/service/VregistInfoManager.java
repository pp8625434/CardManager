package com.manage.vregist.service;

import java.util.List;

import com.base.framework.service.Manager;
import com.manage.vregist.model.SVregistInfoTab;

public interface VregistInfoManager extends Manager{

	List<SVregistInfoTab> getInfoList(Integer id);

}
