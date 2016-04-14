<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<% 
session.removeAttribute("uid");
session.invalidate();
response.sendRedirect(request.getContextPath()+"/index.jsp");
%>