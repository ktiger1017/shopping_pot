<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>

<%

Cookie id=new Cookie("id",URLEncoder.encode(request.getParameter("id")));
Cookie name=new Cookie("name",URLEncoder.encode(request.getParameter("name")));
Cookie date=new Cookie("date",URLEncoder.encode(request.getParameter("date")));
Cookie country=new Cookie("country",URLEncoder.encode(request.getParameter("country")));
Cookie code=new Cookie("code",URLEncoder.encode(request.getParameter("code")));
Cookie adress=new Cookie("adress",URLEncoder.encode(request.getParameter("adress")));

id.setMaxAge(365 * 24 * 60 * 60);
name.setMaxAge(365 * 24 * 60 * 60);
country.setMaxAge(365 * 24 * 60 * 60);
code.setMaxAge(365 * 24 * 60 * 60);
adress.setMaxAge(365 * 24 * 60 * 60);

response.addCookie(id);
response.addCookie(name);
response.addCookie(date);
response.addCookie(country);
response.addCookie(code);
response.addCookie(adress);

response.sendRedirect("product_Receipt2.jsp"); 
%>