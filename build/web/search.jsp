<%-- 
    Document   : search
    Created on : Aug 12, 2020, 7:25:32 PM
    Author     : PrAjWaL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB.sqlutil"%>
<%@page import="java.sql.ResultSet"%>
<%
    sqlutil.connect();
    String name = request.getParameter("name");
    String q = "SELECT * FROM users WHERE userName LIKE '"+name+"%'";
    ResultSet rs = sqlutil.stmt.executeQuery(q);
    int count = 0;
    while (rs.next()) {
        count++;
    }
    
 if (count > 0) {
        rs.beforeFirst();
        while (rs.next()) {

            out.print("<table class='table'><tr><td>"+rs.getString("userName") +"</td><td><button class='btn btn-primary'  id='sendbtn' data-id3='"+rs.getString("userName")+"'>Send Request</button></td></tr></table>");
        }
    } else {
        out.print("No Such User Availabel ");
    }
    
%>