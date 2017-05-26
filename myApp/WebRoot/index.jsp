<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//http://127.0.0.1:8080/myApp/
%>
<!--表示http://-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>杰拉网咖门店管理系统登陆界面01</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <meta charset="UTF-8">
    
    <style>
        div{
			color:aqua;
            font-size:25px;
            border: 0px ;
        }
        .h1{text-align:center;
		    margin-top:1%;
			font-size:50px;
		}
        .bg-jpg{
            width:1980px;
            height:800px;
            background: url(./images/denlubeijing.jpg);
            background-size:100% 80%;
            background-repeat: no-repeat;
		    margin-top:5%;
        }

        .vertical {
            height: 100px;/*元素的高度*/
            position: absolute;
            left:40%;
            top: 80%;/*元素的顶部边界离父元素的的位置是父元素高度的一半*/
            margin-top: -50px;/*设置元素顶边负边距，大小为元素高度的一半*/
        }
        .btns1{margin-right:10px;  }
    </style>
  </head>
  
 <body  style="margin:0px" >
<div class="h1"> 杰拉网咖门店基础管理系统</div>
  <form style="width:3000px" action="loginAction.do">
      <div class="bg-jpg">
            <div class="vertical">
            <div class="username" style="float:left;">
                <label>用户名：</label>
                <input type="text" name="userid" size="19" maxlength="19" />
            </div>
            <div class="pwd" style="float:left;">
                <label>密码：</label>
               <input type="password" name="password" size="20" maxlength="19" />
            </div>
            <div class="btns1" style="float:right;">
                <input type="submit" value="登录"  />
                <input type="reset" name="Submit" value="重置" />
            </div>
            </div>
       </div>
  </form>
<a href="http://localhost:63342/webchuang/%E5%BA%97%E4%B8%BB%E8%87%AA%E6%9F%A5%E6%8A%A5%E5%91%8A.html?_ijt=g4vcrlc0eo58kcv10qc5r5pqch"style="margin-left:700px">店长基础任务检查报告录入</a>
<a href="http://localhost:63342/webchuang/%E5%8C%BA%E5%9F%9F%E7%BB%8F%E7%90%86%E6%9F%A5%E7%9C%8B%E8%87%AA%E6%9F%A5%E6%8A%A5%E5%91%8A.html"style="margin-left:100px">区域经理查看检查报告</a>
<footer style="text-align:center;">
    <p>Posted by: 何晓东14031716</p>
</footer>

</body>
</html>
