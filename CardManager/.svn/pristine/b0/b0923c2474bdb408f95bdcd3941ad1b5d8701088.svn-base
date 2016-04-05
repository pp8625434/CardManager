package com.manage.merchant.service.impl;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.merchant.dao.MerchantDao;
import com.manage.merchant.model.Merchant;
import com.manage.merchant.service.MerchantManager;

public class MerchantManagerImpl extends ManagerImpl implements MerchantManager{

	
	public Merchant getMerchantByMname(String mname) throws Exception {
		
		return ((MerchantDao)dao).getMerchantByMname(mname);
	}

	@Override
	public void updateCommodity(int mid, String mname) throws Exception {
		((MerchantDao)dao).updateCommodity(mid, mname);
	}

}
