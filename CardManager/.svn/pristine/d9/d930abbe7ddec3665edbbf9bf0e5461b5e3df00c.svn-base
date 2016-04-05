package com.manage.creditrank.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.sql.Template;
import org.hibernate.transform.Transformers;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.base.framework.dao.impl.DaoImpl;
import com.base.util.Utils;
import com.manage.creditrank.dao.CreditRankDao;
import com.manage.creditrank.model.CreditRank;
import com.manage.ordersta.model.OrderJson;
import com.sdicons.json.validator.impl.predicates.Int;

public class CreditRankDaoImpl extends DaoImpl implements CreditRankDao{



	@Override
	public Integer findAllCreditRankNum(final String realname,final String cellphone) throws Exception {
		return (Integer) (getHibernateTemplate().execute(new HibernateCallback() {
			public Integer doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql =" select sum(a.credit) as sumcredit from card.c_creditlog a, yanglao.p_userf b ,yanglao.p_userfinfo c where a.uid = b.id  and b.userfinfoid = c.id";
				if(Utils.isNotNullOrEmpty(realname)){
					hql+="   and  c.realname like '%"+realname+"%'";
				}
				if(Utils.isNotNullOrEmpty(cellphone)){
					hql+="  and  b.cellphone like '%"+cellphone+"%'";
				}
				hql+="  group by a.uid order by sumcredit desc ";
				Query query=session.createSQLQuery(hql);
				List list = query.list();
				return (list!=null?list.size():0);
			}
		}));
		
		
	}

	@Override
	public List<CreditRank> findCreditRankList(final int startRowPosition,final int endRowPosition,final String realname,final String cellphone) {
		return (List<CreditRank>) (getHibernateTemplate().execute(new HibernateCallback() {
			public List<CreditRank> doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "select b.cellphone as cellphone ,c.realname  as  realname,sum(a.credit) as sumcredit from card.c_creditlog a,";
				hql += "  yanglao.p_userf b, yanglao.p_userfinfo c where a.uid = b.id and b.userfinfoid = c.id" ;
				if(Utils.isNotNullOrEmpty(realname)){
					hql+="  and c.realname like '%"+realname+"%'";
				}
				if(Utils.isNotNullOrEmpty(cellphone)){
					hql+="  and  b.cellphone like '%"+cellphone+"%'";
				}
				hql += " group by a.uid order by sumcredit desc ";	
				Query query=session.createSQLQuery(hql).setResultTransformer(Transformers.aliasToBean(CreditRank.class));
				query.setFirstResult(startRowPosition);
				query.setMaxResults(endRowPosition);
				List<CreditRank> list = (List<CreditRank>)query.list();
				return list;
			}
		}));
		
	}

	
}
