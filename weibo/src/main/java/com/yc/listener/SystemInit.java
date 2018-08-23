package com.yc.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class SystemInit
 *
 */
@WebListener
public class SystemInit implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public SystemInit() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent servletcontextevent)  { 
         // TODO Auto-generated method stub
    	System.out.println("=============context Destoryed==============");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent s)  { 
         // TODO Auto-generated method stub
    	String path=s.getServletContext().getContextPath();
    	s.getServletContext().setAttribute("root", path);
    	System.out.println("=============context Initialized===========root="+path);
    }
	
}
