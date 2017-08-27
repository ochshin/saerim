<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>IMEU</title>	

	<%@include file="../include/commonHead.jsp"%>
	
	<script type="text/javascript">
		$(document).ready(function(){
		   $("#btn_create").click(function() {
			    $.ajax({
			        url : "<c:url value='/code/create.do'/>",
			        type: "POST",
			        cache : false,
			        data : { "user_id" : ""
			        	   , "user_pw" : ""
			        	   },
					dataType : 'json',
					contentType : "application/json",
			        success : function(responseData){
						if(responseData.success){
							alert(responseData.message);
						} else {
							alert(responseData.message);
						}
					},
			        error : function() {
			        	alert('Error while request..');
			        }
			    });
		   });

		});
		
	    function fn_search(){
		    $.ajax({
		        url : "<c:url value='/code/list.do'/>",
		        type: "POST",
		        cache : false,
		        data : { "user_id" : ""
		        	   , "user_pw" : ""
		        	   },
				dataType : 'json',
				contentType : "application/json",
		        success : function(responseData){
					var obj = JSON.parse(responseData.list);
					var jsonSize = obj.length; // 조회된 목록 건수 
					
					var dataText = [];
					var idx = 0;
					for(var i = 0; i < jsonSize; i ++){
						dataText[idx++] = '<tr>';
						dataText[idx++] = '<td>'+obj[i].ORDER_SEQ+'</td>';
						dataText[idx++] = '<td>'+obj[i].GROUP_ID+'</td>';
						dataText[idx++] = '<td>'+obj[i].CODE_ID+'</td>';
						dataText[idx++] = '<td>'+obj[i].CODE_TEXT+'</td>';
						dataText[idx++] = '</tr>';
					}
					$('#code_tbody').append(dataText.join(''));
				},
		        error : function() {
		        	alert('Error while request..');
		        }
		    });
	    }
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
		<h3 class="tit">CODE</h3>
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
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<colgroup>
							<col width="150px" />
							<col width="150px" />
							<col width="150px" />
							<col width="150px" />
						</colgroup>
						<thead>
							<tr>
								<th>순번</th>
								<th>건물식별번호</th>
								<th>층 번호</th>
								<th>데이터유형</th>
							</tr>
						</thead>
						<tbody id="code_tbody">
						</tbody>
					</table>
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