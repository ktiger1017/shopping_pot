<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>  
<%@ page import="com.oreilly.servlet.multipart.*"%> 
<%@ page import="java.util.*"%> 
<%@ page import="dto.Product"%> 
<%@ page import="dao.ProductRepository"%>


<%
request.setCharacterEncoding("UTF-8");

String filename="";
String realFolder = "c:\\upload";
String encType="utf-8";
int maxSize = 5 * 1024 * 1024;
 
MultipartRequest multi= new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String productId = multi.getParameter("productId");
String name = multi.getParameter("pname");
String unitPrice = multi.getParameter("unitPrice");
String description = multi.getParameter("description");
String manufacturer = multi.getParameter("manufacturer");
String category = multi.getParameter("category");
String unitsInstock = multi.getParameter("unitsInstock");
String condition = multi.getParameter("condition");

Integer price;

if(unitPrice==null){
	price =0;
}
else{
	price=Integer.valueOf(unitPrice);
}

long stock;

if(unitsInstock==null){
	stock=0;
}
else{
	stock=Long.valueOf(unitsInstock);
}

Enumeration files=multi.getFileNames();
String fname=(String) files.nextElement();
System.out.println(fname);
String fileName =multi.getFilesystemName(fname);
System.out.println(fileName);
ProductRepository dao =ProductRepository.getInstance();

Product newProduct = new Product();
newProduct.setProductId(productId);
newProduct.setPname(name);
newProduct.setUnitPrice(price);
newProduct.setDescription(description);
newProduct.setManufacturer(manufacturer);
newProduct.setCategory(category);
newProduct.setUnitsInstock(stock);
newProduct.setCondition(condition);
newProduct.setFilename(fileName);

dao.addProduct(newProduct);

response.sendRedirect("product.jsp");


%>