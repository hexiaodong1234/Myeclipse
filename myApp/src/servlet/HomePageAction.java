package servlet;  
  
import java.io.IOException;  
import java.sql.*; //�������ݿ⴦�����п�  
import javax.servlet.ServletConfig;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.swing.JOptionPane;  
  
//�û���¼����Servlet ϵͳ��¼��ҳ�����  
public class HomePageAction extends HttpServlet {  
      
    private Connection cn=null;     //�������ݿ����Ӷ���  
    private String driverName=null; //���ݿ�������  
    private String url=null;        //���ݿ��ַURL  
      
    //��ʼ��������ȡ�����ݿ����Ӷ���  
    public void init(ServletConfig config) throws ServletException  
    {  
        super.init(config);  
        driverName=config.getInitParameter("driverName");  
        url=config.getInitParameter("url");  
          
        try {  
            Class.forName(driverName);  
            cn=DriverManager.getConnection(url);  
        } catch(Exception e) {  
            System.out.println("ȡ�����ݿ����Ӵ���"+e.getMessage());  
        }  
    }  
      
    //����GET���󷽷�  
    public void doGet(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException  
    {  
        //ȡ���û�ע����ύ������  
        String userid=request.getParameter("userid");  
        String password=request.getParameter("password");  
        //�жϵ�¼�˺�Ϊ�գ����Զ���ת��ע��ҳ��  
        if(userid==null||userid.trim().length()==0) {  
            response.sendRedirect("index.jsp");  
            JOptionPane.showMessageDialog(null, "User name or password can't be empty!");  
        }  
        //�жϵ�¼����Ϊ��  
        if(password==null||password.trim().length()==0) {  
            response.sendRedirect("index.jsp");  
            JOptionPane.showMessageDialog(null, "User name or password can't be empty!");  
        }  
        //��ѯ���ݿ����ת����¼������  
        try {  
            //��ѯ���ݿ����  
              
            //��ת��������  
            response.sendRedirect("success.jsp");  
        } catch(Exception e) {  
            System.out.println("����"+e.getMessage());  
            response.sendRedirect("index.jsp");  
        }  
    }  
      
    //����POST���󷽷�  
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException   
    {  
        doGet(request,response);  
    }  
      
    //���ٷ���  
    public void destroy() {  
        super.destroy();  
        try {  
            cn.close();  
        }catch(Exception e) {  
            System.out.println("�ر����ݿ����"+e.getMessage());  
        }  
    }         
}  
