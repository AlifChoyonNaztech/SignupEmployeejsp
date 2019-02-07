
<%@page import="model.*"%>
<%@ page import="controllers.*" %>


<% 

out.print("hello");
String method= request.getMethod();
String state = request.getParameter("state");

String eid = request.getParameter("eid");
String name= request.getParameter("name");
String pass=  request.getParameter("pass");
String bn = request.getParameter("bn");
String salary= request.getParameter("salary");

Employee em = new Employee(eid,name,pass, new Branch(bn,"",234) , Double.parseDouble( salary ) );

out.print(em);

if(method.equals("POST") ){
	
	out.print(method);
	
	switch(state){
	
	case "employeeSignUp":
		
		
		out.print(state+"meme");
		
		try{
		EmployeeController controller = new EmployeeController();
		
		
		out.print(em);
		int x=controller.SignUp(em);
		out.print("code"+x);
		
		}
		
		catch(Exception e){
		
			out.print(e.getMessage());
		}
		break;
		
		
	case "test":
		out.print("test reply ");
		break;
	
	
	}
	
	
}



%>