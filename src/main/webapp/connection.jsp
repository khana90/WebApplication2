<%-- 
    Document   : newjsp
    Created on : 25-Apr-2020, 00:28:47
    Author     : A
--%>
        <%@page import = "java.sql.*"%>

    <%
        String firstname = request.getParameter("firstname");
         String lastname = request.getParameter("lastname");
          String gender = request.getParameter("gender");
           String email = request.getParameter("email");
            String password = request.getParameter("password");
             String number = request.getParameter("number");
        try{
     Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Testdb_registration","root","root");        
  
  PreparedStatement pst= conn.prepareStatement("Insert into Registration_form (firstname, lastname,gender,email,password,number) values(?,?,?,?,?,?)");
   pst.setString(1, firstname);
    pst.setString(2, lastname);
     pst.setString(3, gender);
      pst.setString(4, email);
       pst.setString(5, password);
        pst.setString(6, number);
        pst.execute();
 
   
    }catch (Exception e ){
        out.println("error");
    }
    %>

