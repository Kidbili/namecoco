<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/19
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.text.*,java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>使用application内置对象 --</title>
    <style>
        #form2 input{
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body bgcolor="#abcdef">
<form action="checkMessage.jsp" method="post">
    请输入姓名：<input type="text" name="name" /><br>
    请输入标题：<input type="text" name="title" /><br>
    请输入内容：
    <textarea cols="40" rows="10" name="message"></textarea>
    <br>  <br>  <br>
    <input type="submit" value="留言" />
</form>
<br>
<form id="form2" action="showMessage.jsp" method="post">
    <input type="submit" value="查看留言板" />
</form>
</body>
</html>
