<%@ page contentType="text/html; charset=GBK" %> 
<%@ page import="java.util.*" %> 
<html><head><title>Cluster Test</title></head> 
<body> 
<% 
  //HttpSession session = request.getSession(true); 

  System.out.println(session.getId()); 
  out.println("<br> SESSION ID:" + session.getId()+"<br>");   
  // 如果有新的请求，则添加session属性 
  String name = request.getParameter("name"); 
  if (name != null && name.length() > 0) { 
     String value = request.getParameter("value"); 
     session.setAttribute(name, value); 
  }   
    out.print("<b>Session List:</b>");   
    Enumeration<String> names = session.getAttributeNames(); 
    while (names.hasMoreElements()) { 
        String sname = names.nextElement();  
        String value = session.getAttribute(sname).toString(); 
        out.println( sname + " = " + value+"<br>"); 
        System.out.println( sname + " = " + value); 
   } 

%> 
</body> 
</html>