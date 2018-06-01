<%@ page contentType="text/html;charset=UTF-8" %>  
<html>  
 <head>  
   <title>JSP简单登录实例</title>  
 </head>  
         </head>
       <style type="text/css">      
     body{      
        background-image: url(image/ab.jpg);      
        background-size:cover;    
     }      
 </style> 
 <body>  
  <h2>请登录</h2>  
  
  <form method="POST" >  
  <table align="center">
               <tr>
                 <td>用户名：</td><td><input type=“text name="Name" /></td>
             </tr>    
             
             
             <tr>
             <td>密码：</td><td><input type="text" name="Password" /></td>
             <tr/>   
        <tr>
             <td colspan="2",align="center">
                 <input type="submit" value="send" />
                
            </td>
             </tr>    
  
  </table>
  <!--  
   Login Name: <input type="text" name="Name"><br>  
   Login Password: <input type="text" name="Password" ><br>  
   <input type="submit" value="Send"><br>  -->
  <form>  
  
  <%  
      if (request.getParameter("Name") != null   
              && request.getParameter("Password") != null) {    
          String Name = request.getParameter("Name");  
          String Password = request.getParameter("Password");  
          if (Name.equals("a") && Password.equals("a")) {     
              session.setAttribute("Login", "OK");  
              session.setAttribute("myCount", new Integer(1));  
              response.sendRedirect("ok.jsp");  
          }  
          else {     
              %>  
              登录失败:用户名或密码不正确～  
              <%    
          }   
      }  
%>  
 </body>  
</html> 