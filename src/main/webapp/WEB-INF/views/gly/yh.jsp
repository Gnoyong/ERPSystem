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
				<h2 class="fl">用户列表</h2>
				<a href="${pageContext.request.contextPath}\user\tjyh" class="fr top_rt_btn add_icon">添加新会员</a>
			</div>
			<section class="mtb">
			<form action="sy" method="post">
			
				<input type="text" name="name" id="name" class="textbox textbox_225"
					placeholder="输入用户账号" /> <input type="submit"
					value="查询" class="group_btn" />
					</form>
			</section>
			<table class="table">
				<tr>
					<th>Id</th>
					<th>账号</th>
					<th>性别</th>
					<th>年龄</th>
					<th>信息更新日期</th>
					<th>联系电话</th>
					<th>角色</th>
					<th>验证</th>
					<th>操作</th>
				</tr>
				<tbody id="list">
					<c:forEach items="${list}" var="list" varStatus="num">
						<tr>
							<td id="id" class="center">${list.id}</td>
							<td id="name" class="center">${list.name}</td>
							<td id="sex" class="center">
							<c:if test="${list.sex == 0}">
									男
								</c:if>
								<c:if test="${list.sex == 1}">
									女
								</c:if>
							</td>
							<td id="year" class="center">${list.year}</td>
							<td id="date" class="center">${list.date}</td>
							<td id="phone" class="center">${list.phone}</td>
							<td id="t1" class="center">
							<c:if test="${list.t1 == 0}">
									管理员
								</c:if>
								<c:if test="${list.t1 == 1}">
									经理
								</c:if>
								<c:if test="${list.t1 == 2}">
									销售
								</c:if>
								<c:if test="${list.t1 == 3}">
									采购
								</c:if>
								<c:if test="${list.t1 == 4}">
									未分配
								</c:if>
							
							</td>
							<td id="t2" class="center"><c:if test="${list.t2 == 0}">
									<a title="已验证" class="link_icon">&#89;</a>
								</c:if> <c:if test="${list.t2 == 1}">
									<a title="未验证" class="link_icon">&#88;</a>
								</c:if></td>
							<td class="center"><a href="${pageContext.request.contextPath}\user\tzup?id=${list.id}" title="编辑"
								class="link_icon">&#101;</a> 
								<a href="${pageContext.request.contextPath}\user\delete?id=${list.id}" title="删除"
								class="link_icon">&#100;</a></td>

						</tr>
					</c:forEach>
				</tbody>

			</table>

		</div>
	</section>

</body>
</html>
