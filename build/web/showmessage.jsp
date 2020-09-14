<%-- 
    Document   : showmessage
    Created on : Aug 15, 2020, 9:22:18 AM
    Author     : PrAjWaL
--%>
<%
    String loginname = (String) session.getAttribute("loginname");
   
    if (loginname == null) {
        response.sendRedirect("Home.jsp");

    }
    session.setAttribute("loginname", loginname);

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB.sqlutil"%>
<%@page import="java.sql.ResultSet" %>
<%    sqlutil.connect();

    String selectname = request.getParameter("username");
    System.out.println(selectname);
    String q = "SELECT * FROM `messages` WHERE sender ='" + loginname + "' AND receiver = '" + selectname + "' OR sender='" + selectname + "' and receiver ='" + loginname + "' ORDER BY time";
    ResultSet rs = sqlutil.stmt.executeQuery(q);
    System.out.println(q);
    int count = 0;
    while (rs.next()) {
        count++;
    }
    if (count > 0) {
        rs.beforeFirst();
        while (rs.next()) {

            String msg = rs.getString("msg");
            String receiver = rs.getString("receiver");

            if (!receiver.equals(loginname)) {
%> 

<li class="replies">
    <img src="images/avtar.jpg" alt="" />
    <p><%=msg%></p>
</li>



<%
    System.out.println(msg);
} else {
%>
<li class="sent">
    <img src="images/avtar.jpg" alt="" />
    <p><%=msg%></p>
</li>
<%
            }
        }

    }


%>