<%@page import="dao.ProductRepository"%>
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
	
	if(product==null){				// id 값으로 product에서 가져오는 값이 없을 때 발생하는 if문 
		response.sendRedirect("exceptionNoId.jsp");
	}
	ArrayList<Product> choicelist = dao.getAllProducts(); //productRepository에서 getAllProducts메소드를 arraylist형식으로 
	Product choice = new Product();
	for(int i=0; i<choicelist.size();i++){
		choice = choicelist.get(i);
		if(choice.getProductId().equals(id)){
			break;
		}
	}
		
	ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartlist");
	if(list==null){
		list = new ArrayList<Product>();
		session.setAttribute("cartlist", list);
	}
	
	int count = 0;
	Product choiceQnt= new Product();
	for(int i=0;i<list.size();i++){
		choiceQnt = list.get(i);
		if(choiceQnt.getProductId().equals(id)){
			count++;
			int orderQnt = choiceQnt.getQuantity()+1;
			choiceQnt.setQuantity(orderQnt);
		}
	}
	
	if(count==0){
		choice.setQuantity(1);
		list.add(choice);
	}
	
	response.sendRedirect("cart.jsp"); 
%>
