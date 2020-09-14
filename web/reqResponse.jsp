<%-- 
    Document   : reqResponse
    Created on : Aug 13, 2020, 9:06:03 AM
    Author     : PrAjWaL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB.sqlutil"%>
<%
    sqlutil.connect();
    String name =  request.getParameter("name");
    String value =  request.getParameter("value");
       System.out.println(name + " "+ value);
   
    
    String q ="UPDATE `friends` SET `recieverStatus`='"+value+"' WHERE senderUserName='"+name+"' ";
    int check = sqlutil.stmt.executeUpdate(q);
    System.out.println(check);
    if(check>0){
    out.println("<p class='alert alert-warning'>You Responded to "+name+"</p>");
    }
    else{
        out.println("<p class='alert alert-danger'>Something  wrong</p>");
    }
    
%>