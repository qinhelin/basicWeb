<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    This is the index JSP page. Here we will try different struts tags.<br>
    The tab library should be imported.
    
    <H1> Html Tag Library </H1>
    <html:link href="http://www.baidu.com">Baidu</html:link>
    <html:form action="login.do">
    	Name: <html:text property="username"/><br/>
    	Password: <html:text property="password"/><br/>
    	<html:submit/> <html:cancel/> <html:reset/>
    </html:form>
    <H1>Bean Tag Library</H1>
    <p>
    	<html:link page="/index.jsp?param1=hello&param2=world"> Click me to see the bean parameter usage.</html:link><br/>
    	<bean:header id="explorer" name="user-agent"/>
    	The explorer you used is: <bean:write name="explorer"/> <br/>
    	<bean:parameter id="p1" name="param1" value="default value"/>
    	The first parameter is: <bean:write name="p1"/> <br/>
    	<bean:parameter id="p2" name="param2" value="default value 2"/>
    	The second parameter is: <bean:write name="p2"/> <br/>
    	
    	<H4>Get the session by bean:page </H4>
    	<bean:page id="sess" property="session"/>
    	<%
    		out.print("Session id:" + sess.getId()+"</br>");
    	 %>
    </p>
    
    <H1>Logic Tag Library</H1>
    <p>
    	<%
    		pageContext.setAttribute("str","123");
    	 %>
    	 <logic:equal name="str" value="123">Equals<br/></logic:equal>
    	 
    	 One line is shown if the parameter param1 is equals to "hello". 
    	 If now shown, click the <html:link page="/index.jsp?param1=hello&param2=world">link</html:link> to see the effect.<br/>
    	 <logic:equal parameter="param1" value="hello">Equal to hello. <br/></logic:equal>
    </p>
  </body>
</html>
