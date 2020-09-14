<%@page import="java.sql.SQLIntegrityConstraintViolationException"%>
<%@page import="DB.sqlutil"%>
<%
    response.setContentType("text/html");
    String firstName=request.getParameter("firstName");
    String lastName=request.getParameter("lastName");
    String userName=request.getParameter("userName");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    
     
   sqlutil.connect();
   String qry="INSERT INTO `users` (`id`, `firstName`, `lastName`, `userName`, `email`, `password`) VALUES (NULL, '"+ firstName +"', '"+ lastName +"', '"+userName+"', '"+ email +"', '"+ password +"')";
   
   try {
           
      
       int n= sqlutil.stmt.executeUpdate(qry);
   if(n==1)
       response.sendRedirect("Home.jsp");
   else
   {
  %>
  <script>
      
    alert("Invalid datails. try again!");
    
  </script>
  
  
  
  
  
  
  <%     
       
    response.sendRedirect("Home.jsp");
   }
 } catch (SQLIntegrityConstraintViolationException e) {
   String s = e.getMessage();
%>

<script>alert('Invalid datails. try again!<%=s%>');
window.location.href="Home.jsp";
</script>")  ; 



<%
}
   sqlutil.stmt.close();
   sqlutil.conn.close();

%>