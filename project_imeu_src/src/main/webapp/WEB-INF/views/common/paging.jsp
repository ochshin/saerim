<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<div class="paging">
	<ul class="page_number">
		<!-- First -->
		<a href="#a" onclick="pageSubmit(1);"><li><img src="/img/icon/page_first.png" border="0"/></li></a>
		  
		<!-- Prev 10 -->  
		<c:if test="${pageInfo.startIndex == 1}">
			<a href="#a" onclick="pageSubmit(1);"><li><img src="/img/icon/page_prev.png" alt="이전" border="0"/></li></a>
		</c:if>
		<c:if test="${pageInfo.startIndex != 1}">
			<a href="#a" onclick="pageSubmit(${pageInfo.startIndex - 1});"><li><img src="/img/icon/page_prev.png" alt="이전" border="0"/></li></a>
		</c:if>
		
		<!-- Numbering -->
		<c:forEach var="item" varStatus="status" begin="${pageInfo.startIndex}" end="${pageInfo.endIndex}" step="1">
			<c:if test="${pageInfo.currentIndex == status.index}">
				<a href="#a" onclick="pageSubmit(${status.index});"><li class="on">${status.index}</li></a>
			</c:if>
			<c:if test="${pageInfo.currentIndex != status.index}">
				<a href="#a" onclick="pageSubmit(${status.index});"><li>${status.index}</li></a>
			</c:if>
		</c:forEach>
		
		<!-- Next 10 -->
		<c:if test="${pageInfo.totalPage == pageInfo.endIndex}">
			<a href="#a" onclick="pageSubmit(${pageInfo.totalPage});"><li><img src="/img/icon/page_next.png" alt="다음" border="0"/></li></a>
		</c:if>
		<c:if test="${pageInfo.totalPage != pageInfo.endIndex}">
			<a href="#a" onclick="pageSubmit(${pageInfo.endIndex+1});"><li><img src="/img/icon/page_next.png" alt="다음" border="0"/></li></a>
		</c:if>
		
		<!-- Last -->
		<a href="#a" onclick="pageSubmit(${pageInfo.totalPage});"><li ><img src="/img/icon/page_end.png" border="0"/></li></a>
	</ul>
</div>
