package com.base.framework;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.core.io.Resource;

public class BaseFrameworkConfig {
	
	protected final  Log logger = LogFactory.getLog(BaseFrameworkConfig.class);
	
	private Resource location;

	private Properties Tk = null;
	
	public Properties getConfig() {
		if(Tk==null){
			Properties props = null;
	
			try {
	        	props = new Properties();
	        	logger.info("loading properties file :" + location.getFilename());
	        	InputStream is = location.getInputStream();
				props.load( is );
				is.close();
			} catch (IOException e) {
				logger.error("Unable to load " +  location.getFilename(), e);
				return null;
			}
			Tk = props;
		}
		return Tk;
	}

	public Resource getLocation() {
		return location;
	}

	public void setLocation(Resource location) {
		this.location = location;
	}
}
