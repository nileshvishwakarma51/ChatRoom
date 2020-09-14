<%-- 
    Document   : message
    Created on : Aug 14, 2020, 10:33:15 PM
    Author     : PrAjWaL
--%>
<%
    String loginname = (String)session.getAttribute("loginname");
    
    if(loginname==null)
    {
        response.sendRedirect("Home.jsp");
        
    }
    session.setAttribute("loginname", loginname);
 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB.sqlutil"%>
<%
    sqlutil.connect();
    String message =  request.getParameter("message");
    String username =  request.getParameter("username");
    System.out.println(message + username);

   
    
    String q ="INSERT INTO `messages`(`sender`, `receiver`, `msg`) VALUES ('"+loginname+"','"+username+"','"+message+"') ";
    int check = sqlutil.stmt.executeUpdate(q);
    System.out.println(check);
    if(check>0){
    out.println("<p class='alert alert-success'>Sent Successfully</p>");
    }
    else{
        out.println("<p class='alert alert-danger'>Something  wrong</p>");
    }
    
%>