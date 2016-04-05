package com.manage.addcardstatistics.dao.impl;

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
import com.manage.addcardstatistics.dao.AddCardStaDao;
import com.manage.addcardstatistics.model.AddCard;

public class AddCardStaDaoImpl extends DaoImpl implements AddCardStaDao {

	@Override
	public AddCard getAddCardSta(final HashMap<String, String> map) {
		return (AddCard) (getHibernateTemplate().execute(new HibernateCallback() {
			public AddCard doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "select count(id) as count from c_card where addtime between '"+map.get("bdate")+"' and '"+map.get("edate")+"'";
				if(Utils.isNotNullOrEmpty(map.get("orgid"))){
					hql += " and orgid like '"+map.get("orgid")+"%'";
				}
				Query query=session.createSQLQuery(hql).setResultTransformer(Transformers.aliasToBean(AddCard.class));
				List<AddCard> list = (List<AddCard>)query.list();
					if(list!=null && list.size()>0){
						return list.get(0);
					}
					return null;
			}
		}));
	}

}
