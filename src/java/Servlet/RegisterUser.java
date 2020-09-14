/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.sqlutil;
/**
 *
 * @author PrAjWaL
 */
@WebServlet(name = "RegisterUser", urlPatterns = {"/RegisterUser"})
public class RegisterUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fname = request.getParameter("firstName");
        String lname = request.getParameter("lastName");
        String uname = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println(fname+lname+uname);
        PrintWriter out = response.getWriter();
        try{
        sqlutil.connect();
        String q = "INSERT INTO `users`( `firstName`, `lastName`, `userName`, `email`, `password`) VALUES ('"+fname+"','"+lname+"','"+uname+"','"+email+"','"+password+"')";
         int check = sqlutil.stmt.executeUpdate(q);
         if(check>0){
             out.println("Successfully Register");
         
         }
         else{
             out.println("wrong");
         }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}
