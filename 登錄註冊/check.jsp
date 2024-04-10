<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("member") !=null && !request.getParameter("member").equals("") 
 && request.getParameter("password") != null && !request.getParameter("password").equals("")){
    
    //sql= "SELECT * FROM member WHERE `email`='" +request.getParameter("email") + 
       //"'  AND `password`='" + request.getParameter("password") + "'"  ;

   String sql3 = "SELECT * FROM `manege` WHERE `manege_account`=? AND `manege_password`=?";
   PreparedStatement adminStmt = con.prepareStatement(sql3);
   adminStmt.setString(1,request.getParameter("member"));
   adminStmt.setString(2,request.getParameter("password"));
   ResultSet adminResult = adminStmt.executeQuery();
   boolean isadmin = adminResult.next();
   
   String sql2 = "SELECT * FROM `member` WHERE `email`=? AND `password`=?";
   PreparedStatement memberStmt = con.prepareStatement(sql2);
   memberStmt.setString(1,request.getParameter("member"));
   memberStmt.setString(2,request.getParameter("password"));
   ResultSet memberResult = memberStmt.executeQuery();
   boolean ismember = memberResult.next();
   //' OR 1=1; #
   // out.println(sql);
   // out.close();

   // ResultSet rs = con.createStatement().executeQuery(sql);
   // ResultSet rs = pstmt.executeQuery();
   if(isadmin) {
      session.setAttribute("user_email",request.getParameter("user_email"));
      session.setAttribute("role","admin");
      out.print("<script>alert('管理者登入成功');location.href='backstage.jsp'</script>");
      con.close();   
   }
   else if(ismember){
         session.setAttribute("user_email",request.getParameter("user_email"));
         session.setAttribute("role","member");
         con.close(); //結束資料庫連結
         out.print("<script>alert('登入成功 ! ');location.href='index.jsp'</script>");
   }
   else{
      con.close(); //結束資料庫連結
      out.print("<script>alert('登入失敗 ! 帳號或密碼不符 ! ');location.href='login.jsp'</script>");
   }
}
else{
 out.print("<script>alert('帳號或密碼不能為空 ! ');location.href='login.jsp'</script>");
}
%>


		   

			