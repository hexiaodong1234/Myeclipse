package servlet;  
  
import java.io.IOException;  
import java.sql.*; //导入数据库处理所有库  
import javax.servlet.ServletConfig;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.swing.JOptionPane;  
  
//用户登录处理Servlet 系统登录主页处理表单  
public class HomePageAction extends HttpServlet {  
      
    private Connection cn=null;     //定义数据库连接对象  
    private String driverName=null; //数据库驱动器  
    private String url=null;        //数据库地址URL  
      
    //初始化方法，取得数据库连接对象  
    public void init(ServletConfig config) throws ServletException  
    {  
        super.init(config);  
        driverName=config.getInitParameter("driverName");  
        url=config.getInitParameter("url");  
          
        try {  
            Class.forName(driverName);  
            cn=DriverManager.getConnection(url);  
        } catch(Exception e) {  
            System.out.println("取得数据库连接错误："+e.getMessage());  
        }  
    }  
      
    //处理GET请求方法  
    public void doGet(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException  
    {  
        //取得用户注册表单提交的数据  
        String userid=request.getParameter("userid");  
        String password=request.getParameter("password");  
        //判断登录账号为空，则自动跳转到注册页面  
        if(userid==null||userid.trim().length()==0) {  
            response.sendRedirect("index.jsp");  
            JOptionPane.showMessageDialog(null, "User name or password can't be empty!");  
        }  
        //判断登录密码为空  
        if(password==null||password.trim().length()==0) {  
            response.sendRedirect("index.jsp");  
            JOptionPane.showMessageDialog(null, "User name or password can't be empty!");  
        }  
        //查询数据库和跳转到登录主界面  
        try {  
            //查询数据库操作  
              
            //跳转到主界面  
            response.sendRedirect("success.jsp");  
        } catch(Exception e) {  
            System.out.println("错误："+e.getMessage());  
            response.sendRedirect("index.jsp");  
        }  
    }  
      
    //处理POST请求方法  
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException   
    {  
        doGet(request,response);  
    }  
      
    //销毁方法  
    public void destroy() {  
        super.destroy();  
        try {  
            cn.close();  
        }catch(Exception e) {  
            System.out.println("关闭数据库错误："+e.getMessage());  
        }  
    }         
}  
