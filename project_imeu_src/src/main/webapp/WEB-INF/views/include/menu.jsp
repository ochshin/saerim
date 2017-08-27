<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document).ready(function(){
	   $("#zone-bar li em").click(function() {
	   		var hidden = $(this).parents("li").children("ul").is(":hidden");
	   		
			$("#zone-bar>ul>li>ul").hide()        
		   	$("#zone-bar>ul>li>a").removeClass();
		   		
		   	if (hidden) {
		   		$(this)
			   		.parents("li").children("ul").toggle()
			   		.parents("li").children("a").addClass("zoneCur");
		   	} 
	   });
	  
	 	$("#zone-bar").mouseleave(function(){
		    $("#zone-bar>ul>li>ul").hide();
		});  
	});
	

	function fnMovePage(page){
		window.location.href = "<c:url value='/code/'/>" + page + ".do";
	}
</script>	
	
		<div id="zone-bar">
			<ul>
				<li>
					<a href="#">
						<span>Technology &nbsp;
							<em class="opener-technology">
								<img src="<c:url value='/images/zonebar-downarrow.png'/>" alt="dropdown" />
							</em>
						</span>
					</a>
					<ul class="technologysublist">
						<li><a href="#">Apple</a></li>
						<li><a href="#">Design</a></li>
						<li><a href="#">Gadgets</a></li>
						<li><a href="#">Hardware</a></li>
						<li><a href="#">Industry News</a></li>
					</ul>
				</li>
				<li>
					<a href="#">
						<span>Sports &nbsp;
							<em class="opener_sports">
								<img src="<c:url value='/images/zonebar-downarrow.png'/>" alt="dropdown" />
							</em>
						</span>
					</a>
					<ul class="sports-sublist">
						<li><a href="<c:url value='/code/index.do'/>">code</a></li> 
						<li><a href="<c:url value='/editor/index.do'/>">editor</a></li>
						<li><a href="#">Extreme</a></li>
						<li><a href="#none" onclick="fnMovePage('list')">code</a></li>
					</ul>
				</li>
				<li>
					<a href="#">
						<span>맛집 &nbsp;
							<em class="opener_food">
								<img src="<c:url value='/images/zonebar-downarrow.png'/>" alt="dropdown" />
							</em>
						</span>
					</a>
					<ul class="food_sublist">
						<li><a href="<c:url value='/food/steak/list.do'/>">스테이크</a></li> 
						<li><a href="<c:url value='/food/pizza/list.do'/>">피자</a></li>
					</ul>
				</li>
			</ul>
		</div>