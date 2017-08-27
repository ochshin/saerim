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
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/imeu.css'/>" />
	<script type="text/javaScript" language="javascript" defer="defer">
    <!--
        
    /* 글 목록 화면 function */
    function fn_login() {
    	document.listForm.action = "<c:url value='/egovSampleList.do'/>";
       	document.listForm.submit();
    }
    
    function fn_write() {
	    $.ajax({
	        url : "/login/write.do",
	        type: "get",
	        data : { "id" : $("#id").val() },
	        success : function(responseData){
	            var data = responseData.msg;
	        }
	    });
	     
    }
        
    //-->
    </script>
</head>
<body style="text-align: center; margin: 0 auto; display: inline; padding-top: 100px;">
	<div>
		<%@include file="../include/menu.jsp"%>
	</div>
	<form:form id="listForm" name="listForm" method="post">
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
				<li><form:input path="user_id" cssClass="txt" /></li>
				<li><form:input path="user_pw" cssClass="txt" /></li>
				<li><span class="btn_blue_l"> <a href="javascript:fn_login();">로그인</a></span></li>
			</ul>
		</div>
	</div>
	</form:form>
</body>
</html>