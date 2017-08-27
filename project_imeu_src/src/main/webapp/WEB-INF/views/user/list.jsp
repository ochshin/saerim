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
		<!-- // 검색 -->
		<div id="search">
			<ul>
				<li><form:input path="searchKeyword" cssClass="txt" /></li>
				<li><span class="btn_blue_l"> <a href="javascript:fn_egov_selectList();">Search</a></span></li>
			</ul>
		</div>
		<!-- List -->
		<div id="table">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
				<caption style="visibility: hidden">카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블</caption>
				<colgroup>
					<col width="40" />
					<col width="100" />
					<col width="150" />
					<col width="80" />
					<col width="?" />
					<col width="60" />
				</colgroup>
				<tr>
					<th align="center">No</th>
				</tr>
				<c:forEach var="result" items="${resultList}" varStatus="status">
					<tr>
						<td align="center" class="listtd"><c:out value="1" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="sysbtn">
			<ul>
				<li><span class="btn_blue_l"> <a href="javascript:fn_egov_addView();">등록</a></span></li>
			</ul>
		</div>
	</div>
</body>
</html>