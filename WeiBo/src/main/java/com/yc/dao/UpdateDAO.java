package com.yc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UpdateDAO {

  public boolean Update(String username)
  {
    Connection con;
    Statement sql;
    ResultSet rs;
    boolean Flag = false;
    //桥接法驱动
    try
    {
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    }
    catch(ClassNotFoundException e){}
    
    
    try
    {
      //test为跟数据库关联的数据源名
      con = DriverManager.getConnection("jdbc:odbc:test","","");
      sql = con.createStatement();
      /*    假设数据库中用户表如下：
       *    表名：user
       *    各字段：
       *    username（用户名） password（密码） pflag(用户权限)
       *
       */
      rs = sql.executeQuery("select password from user where username='"+username+"'");
      while(rs.next()){
        Flag = true;
        String password = rs.getString(1);
    
      }
    }
    catch(SQLException e1)
    {
      System.err.println(e1) ;
    }
    return Flag;
  }
} 