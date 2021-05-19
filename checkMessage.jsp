<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/19
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.text.*,java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>使用application内置对象--</title>
</head>
<body bgcolor="#abcdef">
<%!Vector<String> v=new Vector<String>(); int i =0;%>
<%
    String datetime = new SimpleDateFormat("yyyy-MM--dd hh:mm:ss").format(Calendar.getInstance().getTime());
%>
<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String title=request.getParameter("title");
    String message=request.getParameter("message");
%>
<%
    if(name == null || "".equals(name.trim())){
        name = "网友"+(int)(Math.random() * 100000+10000);
    }
    if(title == null || "".equals(title.trim())){
        title = "无";
    }
    if(message == null || "".equals(message.trim())){
        message = "无";
    }
%>
<%
    i++;
    String str="第"+"<span class=span0>"+i+"</span>"+"楼"+
            ".<span class=span1>留言人:</span>"
            +name+".<span class=span2>标题:</span>"+title+
            ".<span class=span3>内容:</span><br>" +message
            +".<span class=span4>时间:</span>" +datetime +".<hr>";
    v.add(str);
    application.setAttribute("message",v);
%>
留言成功
<a href="inputMessage.jsp">返回留言板</a>
</body>
</html>
