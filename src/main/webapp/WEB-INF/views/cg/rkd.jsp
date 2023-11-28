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
<form action="rkcg" method="post">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">请输入货物信息</h2>
      </div>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">货物名称：</span>
        <input type="text" name="name" class="textbox textbox_225"  placeholder="货物名称..."/>
       
       </li>
       <li>
        <span class="item_name" style="width:120px;">数量：</span>
        <input type="text" name="number" class="textbox textbox_225"  placeholder="数量..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;" name="sex">价格：</span>
       <input type="text" name="money" class="textbox textbox_225"  placeholder="价格..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">供应商：</span>
        <input type="text"  name="gy" class="textbox textbox_225" placeholder="供应商..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">联系电话：</span>
        <input type="tel" name="phone" class="textbox textbox_225"  placeholder="联系电话..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;"></span>
        <input type="submit" class="link_btn" value="提交"/>
       </li>
      </ul>
 </div>
 </form>
</section>

</body>
</html>
