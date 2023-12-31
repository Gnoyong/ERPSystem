<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
	(function($) {
		$(window).load(
				function() {

					$("a[rel='load-content']").click(
							function(e) {
								e.preventDefault();
								var url = $(this).attr("href");
								$.get(url, function(data) {
									$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
									//scroll-to appended content 
									$(".content").mCustomScrollbar("scrollTo",
											"h2:last");
								});
							});

					$(".content").delegate(
							"a[href='top']",
							"click",
							function(e) {
								e.preventDefault();
								$(".content").mCustomScrollbar("scrollTo",
										$(this).attr("href"));
							});

				});
	})(jQuery);
</script>
</head>
<body>
	<!--header-->
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<!--aside nav-->
	<!--aside nav-->
	<jsp:include page="/WEB-INF/views/aside.jsp" />

	
<section class="rt_wrap content mCustomScrollbar">
		<div class="rt_content">
			<div class="page_title">
				<h2 class="fl">库存查询</h2>
			</div>
			<section class="mtb">
			<form action="tzkc" method="post">
			
				<input type="text" name="name" id="name" class="textbox textbox_225"
					placeholder="输入商品名称" /> <input type="submit"
					value="查询" class="group_btn" />
					</form>
			</section>
			<table class="table">
				<tr>
					<th>Id</th>
					<th>商品名称</th>
					<th>数量</th>
					<th>价格</th>
					<th>供应商</th>
					<th>联系电话</th>
					<th>更新时间</th>
					<th>责任人</th>
					<th style="width:200px;">操作</th>
				</tr>
				<tbody id="list">
					<c:forEach items="${list}" var="list" varStatus="num">
						<tr>
							<td id="id" class="center">${list.id}</td>
							<td id="name" class="center">${list.name}</td>
							<td id="number" class="center">${list.number}</td>
							<td id="money" class="center">${list.money}</td>
							<td id="gy" class="center">${list.gy}</td>
							<td id="phone" class="center">${list.phone}</td>
							<td id="date" class="center">${list.date}</td>
							<td id="zrr" class="center">${list.zrr}</td>
							<td class="center"> 
							<a href="${pageContext.request.contextPath}\user\sj?id=${list.id}">
							<input type="button" class="link_btn" value="上架" >
								</a>
								<a href="${pageContext.request.contextPath}\user\update_hw?id=${list.id}">
							<input type="button" class="link_btn" value="修改" >
								</a>
								</td>

						</tr>
					</c:forEach>
				</tbody>

			</table>

		</div>
	</section>

</body>
</html>
