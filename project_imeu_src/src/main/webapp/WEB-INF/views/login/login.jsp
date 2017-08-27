<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><spring:eval expression="@prop.getProperty('title')" /></title>
	<%@include file="../include/commonHead.jsp"%>
	<script type="text/javaScript" language="javascript" defer="defer">
    function fn_login(){
	    $.ajax({
	        url : "/imeu/login/login.do",
	        type: "get",
	        cache : false,
	        data : { "user_id" : $("#user_id").val()
	        	   , "user_pw" : $("#user_pw").val()},
			dataType : 'json',
			contentType : "application/json",
	        success : function(responseData){
	            var data = responseData.msg;
				
	            if(data == ""){
	            	alert("ccc");
	            } else {
	            	var list = responseData.data;
	            	alert("list length = " + list.length);
	            	
	            	for(var i=0; i < list.length; i++){
	            		alert(list[i].index);
	            	}
	            }
	        },
	        error : function() {
	        	alert('Error while request..');
	        }
	    });
    }
    </script>
</head>
<body style="text-align: center; margin: 0 auto; display: inline; padding-top: 100px;">
	<div>
		<%@include file="../include/menu.jsp"%>
	</div>
	<div id="content_pop">
		<!-- 타이틀 -->
		<div id="title">
			<ul>
				<li>로그인</li>
			</ul>
		</div>
		<!-- // 타이틀 -->
		<div id="search">
			<ul>
				<li>user_id 1 : <input id="user_id"/></li>
				<li><input id="user_pw"/></li>
				<li><span class="btn_blue_l"><input type="button" id="btnLogin" onclick="javascript:fn_login();" value="로그인"/></span></li>
			</ul>
		</div>
	</div>
</body>
</html>