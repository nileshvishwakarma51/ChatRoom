<%-- 
    Document   : showfriends
    Created on : Aug 15, 2020, 11:24:23 PM
    Author     : PrAjWaL
--%>
<%
    String loginname = (String) session.getAttribute("loginname");

    if (loginname == null) {
        response.sendRedirect("Home.jsp");

    }
    
    String searchname = "";
    searchname = request.getParameter("searchname");
    String clickname = request.getParameter("id");


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB.sqlutil"%>
<%@page import="java.sql.ResultSet" %>
<%    try {
        sqlutil.connect();
        String q = "select recieverUserName,senderusername from friends where (senderusername='" + loginname + "'or recieverusername='" + loginname + "') and recieverstatus='accept'";
        ResultSet rs = sqlutil.stmt.executeQuery(q);
        int count = 0;
        while (rs.next()) {
            count++;
        }
        if (count > 0) {
            rs.beforeFirst();
            while (rs.next()) {
                String rname = rs.getString("recieverUserName");
                String sname = rs.getString("senderusername");
                
                
//                boolean checkrname = rname.startsWith(searchname);
//                
//                boolean checksname = sname.startsWith(searchname);
            

//                if (checkrname || checksname) {
                    System.out.println(searchname);
                    if (!rname.equals(loginname)) {

%>
<li class="contact" data-id3="<%=rname%>" id="<%=rname%>" >
    <div class="wrap">
        <span class="contact-status online"></span>
        <img src="images/avtar.jpg" alt="" />
        <div class="meta">
            <p><%=rname%></p>
            <p class="preview">You just got LITT up, Mike.</p>
        </div>
    </div>
</li>

<%     }

    if (!sname.equals(loginname)) {
%>
<li class="contact" data-id3="<%=sname%>"  id="<%=sname%>" >
    <div class="wrap">
        <span class="contact-status online"></span>
        <img src="images/avtar.jpg" alt="" />
        <div class="meta">
            <p   ><%=sname%></p>
            <p class="preview">You just got LITT up, Mike.</p>
        </div>
    </div>
</li>


<%
                    }
//}

            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>