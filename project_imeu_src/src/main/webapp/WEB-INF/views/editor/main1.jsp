<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>IMEU</title>	

	<%@include file="../include/commonHead.jsp"%>
	
	<script type="text/javascript">
		$(document).ready(function(){

		});
		
	</script>	
</head>

<body>
	<div id="page-wrap">
		<!-- 탑 영역 시작 -->
		<%@include file="../include/top.jsp"%>
		<!-- 탑 영역 시작 -->
		
		<!-- 메뉴 영역 시작 -->
		<%@include file="../include/menu.jsp"%>
		<!-- 메뉴 영역 종료 -->
		
		<!-- 메인 영역 시작 -->
	<div id="main-content">
		<h3 class="tit">EDITOR</h3>
		<br/>
			<!-- #contentsArea -->
			<div id="">
				<div class="searchArea">
					<span>데이터유형</span>
					<select>
						<option>상태 (전체)</option>
						<option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
					</select>
					<span class="pdl">건물식별번호</span>
					<input type="text" class="text" />
					<span class="pdl">제공자ID</span>
					<input type="text" class="text" />
					<a href="#none"><img src="<c:url value='/images/search.png'/>" alt="" onclick="javascript:fn_search();"/></a>
				</div>
				<div class="boardStyle rowOver">
					<!-- 스크롤 없애고 딱맞게 할시 아래 table width="200%"를 100%로 조절 하세요. -->
					<form>
						<textarea id="editor1" name="editor1" rows="0" cols="80">
						CCCCCCCCCC
						</textarea>
						<script type="">
							CKEDITOR.replace("editor1");
						</script>
					</form>
				</div>
				<!-- .btnArea -->
				<ul class="btnArea">
					<li class="color"><a href="#none" id="btn_create">등록</a></li>
					<li><a href="#none">수정</a></li>
					<li><a href="#none">선택삭제</a></li>
				</ul>
				<!-- /.btnArea -->
			</div>
			<!-- /#contentsArea -->
		</div>
		<!-- 메인 영역 종료 -->
		
		<!-- 풋터 영역 시작 -->
		<%@include file="../include/footer.jsp"%>	
		<!-- 풋터 영역 종료 -->
	</div>	
</body>
</html>