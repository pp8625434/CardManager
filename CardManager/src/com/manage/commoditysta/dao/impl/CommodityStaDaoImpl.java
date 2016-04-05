package com.manage.commoditysta.dao.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.base.framework.dao.impl.DaoImpl;
import com.base.util.Utils;
import com.manage.commoditysta.dao.CommodityStaDao;
import com.manage.commoditysta.model.CommoditySta;

public class CommodityStaDaoImpl extends DaoImpl implements CommodityStaDao {

	@Override
	public List<CommoditySta> getCommoditySta(final HashMap<String, String> map) {
		return (List<CommoditySta>) (getHibernateTemplate().execute(new HibernateCallback() {
			public List<CommoditySta> doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "select  a.cid as cid,b.cname as cname,sum(a.count) as sumcount,b.unit as unit," +
						"sum(a.allprice) as allprice from c_orderbill a , c_commodity b where a.cid = b.id ";
				if(Utils.isNotNullOrEmpty(map.get("mid"))){
					hql += " and a.mid="+map.get("mid");
				}
				if(Utils.isNotNullOrEmpty(map.get("sourceid"))){
					hql += " and b.sourceid="+map.get("sourceid");
				}
				if(Utils.isNotNullOrEmpty(map.get("bdate")) && Utils.isNotNullOrEmpty(map.get("edate"))){
					hql += " and addtime between '"+map.get("bdate")+"' and '"+map.get("edate")+"'";
				}
				hql += " group by a.cid order by sumcount desc ";
				Query query=session.createSQLQuery(hql).setResultTransformer(Transformers.aliasToBean(CommoditySta.class));
				List<CommoditySta> list = (List<CommoditySta>)query.list();
				return list;
			}
		}));
	}

}
