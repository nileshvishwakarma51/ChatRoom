<%-- 
    Document   : sendRequest
    Created on : Aug 12, 2020, 8:54:09 PM
    Author     : PrAjWaL
--%>
<%
    String loginname = (String)session.getAttribute("loginname");
    System.out.println(loginname);
    if(loginname==null)
    {
        response.sendRedirect("Home.jsp");
        
    }
    session.setAttribute("loginname", loginname);
 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB.sqlutil"%>
<%@page import="java.sql.ResultSet"%>
<%
    sqlutil.connect();
    String name =  request.getParameter("name");
    String qry="SELECT * FROM `friends` WHERE (senderUserName = '"+loginname+"' AND recieverUserName ='"+name+"') OR (senderUserName ='"+name+"' AND recieverUserName ='"+loginname+"') AND senderStatus ='sent'";
    ResultSet rs = sqlutil.stmt.executeQuery(qry);
    int result=0;
    if(rs.next())
    {
        result++;
        
    }
    
    if(name.equals(loginname))
    {
        out.print("<p class='alert alert-danger'>You Cannot sent Request to Yourself</p>");
    }
    else if(result>0)
    {
        out.print("<p class='alert alert-danger'>You Already sent Request to "+name+" </p>");
    }
   
    else{
    String q ="INSERT INTO friends (senderUserName , recieverUserName , senderStatus) VALUES('"+loginname+"' , '"+name+"' ,'sent') ";
    int check = sqlutil.stmt.executeUpdate(q);
    System.out.println(check);
    if(check>0){
    out.println("<p class='alert alert-success'>Sent Successfully</p>");
    }
    else{
        out.println("<p class='alert alert-danger'>Something  wrong</p>");
    }
    }
    
%>