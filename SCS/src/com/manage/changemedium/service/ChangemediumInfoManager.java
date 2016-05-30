package com.manage.changemedium.service;

import java.util.List;

import com.base.framework.service.Manager;
import com.manage.changemedium.model.SChangemediumInfoTab;

public interface ChangemediumInfoManager extends Manager{

	List<SChangemediumInfoTab> getCminfoList(Integer id);

}
