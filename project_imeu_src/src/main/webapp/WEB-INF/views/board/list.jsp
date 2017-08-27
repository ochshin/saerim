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
		<h3 class="tit">LIST1</h3>
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
					<a href="#none"><img src="../images/common/btn_search.gif" alt="" /></a>
				</div>
				<div class="boardStyle rowOver">
					<!-- 스크롤 없애고 딱맞게 할시 아래 table width="200%"를 100%로 조절 하세요. -->
					<table width="200%" border="0" cellpadding="0" cellspacing="0">
						<colgroup>
							<!-- <col width="150px" />
							<col width="150px" />
							<col width="150px" />
							<col width="150px" />
							<col width="150px" />
							<col width="*" />
							<col width="200px" />
							<col width="150px" />
							<col width="200px" /> -->
						</colgroup>
						<thead>
							<tr>
								<th><input type="checkbox" /></th>
								<th>순번</th>
								<th>건물식별번호</th>
								<th>층 번호</th>
								<th>데이터유형</th>
								<th>데이터 유형설명</th>
								<th>버전</th>
								<th>파일명</th>
								<th>표준앱버전</th>
								<th>제공자ID</th>
								<th>제공자 설명</th>
								<th>최종변경일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td>1</td>
								<td>1234567890123456789012312</td>
								<td>00000</td>
								<td></td>
								<td></td>
								<td>20131115112300</td>
								<td>00000-COEX-POIDB.iaf</td>
								<td>1.0.1</td>
								<td>000000000011</td>
								<td>POI 데이터 서버 - (주)매스코</td>
								<td>2014-10-30 16:13:11</td>
							</tr>
							<tr>
								<td><input type="checkbox" /></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<ul class="paging">
					<li><a href="#none"><img src="../images/board/btn_frist.gif" alt="" /></a></li>
					<li><a href="#none"><img src="../images/board/btn_prev.gif" alt="" /></a></li>
					<li><strong>1</strong></li>
					<li><a href="#none">2</a></li>
					<li><a href="#none">3</a></li>
					<li><a href="#none">4</a></li>
					<li><a href="#none">5</a></li>
					<li><a href="#none">6</a></li>
					<li><a href="#none">7</a></li>
					<li><a href="#none">8</a></li>
					<li><a href="#none">9</a></li>
					<li><a href="#none">10</a></li>
					<li><a href="#none"><img src="../images/board/btn_next.gif" alt="" /></a></li>
					<li><a href="#none"><img src="../images/board/btn_last.gif" alt="" /></a></li>
				</ul>
				<!-- .btnArea -->
				<ul class="btnArea">
					<li class="color"><a href="#none">등록</a></li>
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