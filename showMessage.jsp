<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/19
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.sun.org.apache.xml.internal.serializer.utils.StringToIntTable" %>
<%@ page language="java" import="java.text.*,java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>使用application--</title>
    <style>
        body{
            background: RGBA(38,38,38,1);
        }
        div{
            width: 800px;//
        border:1px solid RGBA(100,90,87,1)
            color:white;
        }
        span{
            font-size: 20px;
            font-weight: bold;
        }
        .span0{
            color: red;
            font-size: 25px;
        }
        .span1{
            color: green;
        }
        .span2{
            color: orange;
        }
        .span3{
            color: green;
        }
        .span4{
            color: red;
        }
    </style>
</head>
<body>
<div>
    <%
        Object o = application.getAttribute("message");
        if(o == null){
            out.print("暂时还没有留言呢");
        }else{
            Vector<String> v =(Vector<String>)o;
            for (int i =v.size() -1; i>=0; i--){
                StringTokenizer st=new StringTokenizer(v.get(i),".");
                while (st.hasMoreElements()){
                    out.print(st.nextToken() + "<br>");
                }
            }
        }
    %>

</div>
</body>
</html>
