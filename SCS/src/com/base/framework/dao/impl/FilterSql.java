package com.base.framework.dao.impl;

import java.io.Serializable;


public class FilterSql implements Serializable{
		
		/**
		 * ��ݿ����ֶ���
		 */
		private String sql;

		/**
		 * ��ϵ��
		 */
		private String relations;

		/**
		 * ����ֶ���
		 * @return �ֶ���
		 */
		public String getSql() {
			return sql;
		}

		/**
		 * �����ֶ���
		 * @param fieldName �ֶ���
		 */
		public void setSql(String sql) {
			this.sql = sql;
		}

		/**
		 * ��ù�ϵ��
		 * @return ��ϵ��
		 */
		public String getRelations() {
			return relations;
		}

		/**
		 * ���ù�ϵ��
		 * @param relations ��ϵ��
		 */
		public void setRelations(String relations) {
			this.relations = relations;
		}

	}
