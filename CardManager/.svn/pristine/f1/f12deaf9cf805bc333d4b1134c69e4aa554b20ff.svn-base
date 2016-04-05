package com.manage.merchant.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.base.framework.dao.impl.DaoImpl;
import com.base.util.Utils;
import com.manage.merchant.dao.MerchantDao;
import com.manage.merchant.model.Merchant;

public class MerchantDaoImpl extends DaoImpl implements MerchantDao{

	/* (non-Javadoc) 验证商铺名称重复
	 * @see com.manage.merchant.dao.MerchantDao#getMerchantByMname(java.lang.String)
	 */
	public Merchant getMerchantByMname(String mname) throws Exception {
		String hql = "from com.manage.merchant.model.Merchant mer where mer.mname='"+mname+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Merchant)list.get(0);
		}
		return null;
	}

	@Override
	public void updateCommodity(int mid, String mname) throws Exception {
		
		String hql = " update c_commodity c set c.mname=:mname WHERE  c.mid=:mid";
		Map<String,Object> map = new HashMap<String,Object>();
		if(Utils.isNotNullOrEmpty(mid)){
			map.put("mid", mid);
		}
		if(Utils.isNotNullOrEmpty(mname)){
			map.put("mname",mname );
		}
		this.executeHqlToSql(hql, map);
		
	}

}
