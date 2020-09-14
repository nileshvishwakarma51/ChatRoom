<%@page import="java.sql.ResultSet"%>
<%@page import="DB.sqlutil"%>
<%
    String usrNme = request.getParameter("userName");
    String userpsw = request.getParameter("password");
    sqlutil.connect();
    String q = "SELECT * FROM `users` WHERE userName='" + usrNme + "' AND password='" + userpsw + "'";
    ResultSet rs = sqlutil.stmt.executeQuery(q);
    if (rs.next()) {
        String userName = rs.getString("userName");
        session.setAttribute("loginname", userName);
        response.sendRedirect("AddFriend.jsp");
    } else {
        out.print("<script>alert('invalid username/password');</script>");
        out.println("<script>document.location.href='Home.jsp'</script>");
    }

%>