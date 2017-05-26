<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" pageEncoding="UTF-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!-- 参考博文 http://blog.csdn.net/believejava/article/details/39111823 -->  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>验证成功界面</title>  
      
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <style type="text/css">    
    table {    
        border: 2px #CCCCCC solid;    
        width: 360px;    
    }    
        
    td,th {    
        height: 30px;    
        border: #CCCCCC 1px solid;    
    }    
    </style>    
  </head>  
    
  <body>  
        界面表单提交跳转成功 <br>  
        <a href="index.jsp">返回</a>  
          
    <%    
        //驱动程序名     
        String driverName = "com.mysql.jdbc.Driver";    
        //数据库用户名     
        String userName = "root";    
        //密码     
        String userPasswd = "123456";    
        //数据库名     
        String dbName = "test01";    
        //表名     
        String tableName = "worker";    
        //联结字符串     
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="    
                + userName + "&password=" + userPasswd;    
        Class.forName("com.mysql.jdbc.Driver").newInstance();    
        Connection connection = DriverManager.getConnection(url);    
        Statement statement = connection.createStatement();    
        String sql = "SELECT * FROM " + tableName;    
        ResultSet rs = statement.executeQuery(sql);    
    %>    
    <br>    
    <br>    
    <table align="center">    
        <tr>    
            <th>    
                <%    
                    out.print("姓名");    
                %>    
            </th>    
            <th>    
                <%    
                    out.print("工号");    
                %>    
            </th>    
            <th>    
                <%    
                    out.print("职位");    
                %>    
            </th>    
        </tr>    
    
        <%    
            while (rs.next()) {    
        %>    
        <tr>    
            <td>    
                <%    
                    out.print(rs.getString(1));    
                %>    
            </td>    
            <td>    
                <%    
                    out.print(rs.getString(2));    
                %>    
            </td>    
            <td>    
                <%    
                    out.print(rs.getString(3));    
                %>    
            </td>    
        </tr>    
        <%    
            }    
        %>    
    </table>    
    <div align="center">    
        <br> <br> <br>    
        <%    
            out.print("数据查询成功，恭喜你");    
        %>    
    </div>    
    <%    
        rs.close();    
        statement.close();    
        connection.close();    
    %>    
  </body>  
</html>  