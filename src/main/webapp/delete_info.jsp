<%@page import="java.security.ProtectionDomain"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<% 
	String id= request.getParameter("id");

	if(id==null|| id.trim().equals("")){     //id 값이 없을 때 제품으로 다시 보내는 if문
		response.sendRedirect("product.jsp");
		return;
	}
	
	ProductRepository dao= ProductRepository.getInstance();
	
	Product product=dao.getProductById(id);
	if(product==null){
		response.sendRedirect("exceptionNoId.jsp");
	}
	
	ArrayList<Product> choicelist = (ArrayList<Product>)session.getAttribute("cartlist");
	Product choice = new Product();
	for(int i=0; i<choicelist.size();i++){
		choice = choicelist.get(i);
		if(choice.getProductId().equals(id)){
			choicelist.remove(choice);
		}
	}
	
	response.sendRedirect("cart.jsp");
%>
