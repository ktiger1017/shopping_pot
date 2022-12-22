<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>

<%
String id= request.getParameter("id");

if(id==null|| id.trim().equals("")){     //id 값이 없을 때 제품으로 다시 보내는 if문
	response.sendRedirect("product.jsp");
	return;
}

session.invalidate();
response.sendRedirect("cart.jsp");

%>