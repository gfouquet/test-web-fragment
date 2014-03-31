package org.gfouquet.webfrag;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class PluginClassPublisher implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		try {
			Class<?> plug;
			plug = Thread.currentThread().getContextClassLoader().loadClass("com.google.common.base.Stopwatch");
			sce.getServletContext().setAttribute("pluginClass", plug);
			sce.getServletContext().setAttribute("pluginInstance", plug.newInstance());
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}
