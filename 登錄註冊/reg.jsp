<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>reg</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫  
		
         sql="USE store";
         con.createStatement().execute(sql);
         //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
   
         String new_username = request.getParameter("username");
         String new_gender = request.getParameter("gender");
		   String new_phone = request.getParameter("phone");
		   String new_birthday = request.getParameter("birthday");
		   String new_user_email=request.getParameter("email");
		   String new_user_password=request.getParameter("password");
		   String new_check_password=request.getParameter("confirm_password");
//判斷密碼相符
         sql="select `email` FROM `member` WHERE `email`='"+new_user_email+"' ";
		 
         boolean ismuilt = false;
		   ResultSet ris = con.createStatement().executeQuery(sql);
//Step 4: 執行 SQL 指令	
			while(ris.next())
			{
            ismuilt=true;
         };
		   if(request.getParameter("username") !=null && !request.getParameter("username").equals("") 
	          && request.getParameter("password") != null && !request.getParameter("password").equals(""))
             {
           sql= "SELECT * FROM `member` WHERE `meb_name`='" +request.getParameter("username") + 
	       "'  AND `password`='" + request.getParameter("password") + "'"  ; 
	          ResultSet rs =con.createStatement().executeQuery(sql);
		
		
			if(ismuilt){
				out.print("帳號重複，3秒後回註冊頁");
				out.print("<meta http-equiv='refresh' content='3;url=register.jsp'>");
			}
			else{
            sql="INSERT `member`(`meb_name`, `gender`, `phone`,`birth`, `email`, `password`, `agpsd`)";
            sql+="VALUES('" +new_username+ "', ";
            sql+="'"+new_gender+"', ";
            sql+="'"+ new_phone+"', ";
            sql+="'"+new_birthday+"', ";
            sql+="'"+new_user_email+"', ";
            sql+="'"+new_user_password+"',";
			sql+="'"+new_check_password+"') ";
            con.createStatement().execute(sql);
            out.println("註冊成功，三秒後自動回到登入頁面");
            out.print("<meta http-equiv='refresh' content='3; url=login.jsp'>");
			}
	}
	else{
	out.print("<script>alert('帳號或密碼不能為空 ! ');location.href='register.jsp'</script>");
}
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>  
   
</body>
</html>


