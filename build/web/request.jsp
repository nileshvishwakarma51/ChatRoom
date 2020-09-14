<%-- 
    Document   : delete
    Created on : Aug 9, 2020, 11:18:42 PM
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
<%@page import="java.sql.ResultSet" %>
<%
    sqlutil.connect();
    
    
    String q ="Select firstname,lastname,username from users where username in (Select senderUsername from friends where recieverUserName = '"+loginname+"' and recieverStatus = 'Wait') ";
       ResultSet rs = sqlutil.stmt.executeQuery(q);
      int count = 0;
    while (rs.next()) {
        count++;
    }
    
 if (count > 0) {
        rs.beforeFirst();
        %>
        <table class='table'>
            <tr>
                <th>Name</th>
                <th>userName</th>
                <th>Accept</th>
                <th>Reject</th>
            </tr>
        
        
        <%
        while (rs.next()) {
        out.print("<tr><td>"+rs.getString("firstname")+rs.getString("lastname") +"</td><td>"+rs.getString("username") +"</td><td><button class='btn btn-primary btn-accept' data-id4='"+rs.getString("username")+"' >Accept</button></td><td><button class='btn btn-danger btn-reject' data-id5='"+rs.getString("username")+"'>Reject</button></td></tr> ");
        System.out.println(rs.getString("username"));
        }
        out.println("</table>");
 }
 else{
     out.print("<p class='alert alert-danger'>No new request Avialable<p>");
 }
%>