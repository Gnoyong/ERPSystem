<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>后台管理系统</title>
    <meta name="author" content="DeathGhost"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/assets/css/style.css">
    <!--[if lt IE 9]>
    <script src="js/html5.js"></script>
    <![endif]-->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
    <script
            src="${pageContext.request.contextPath}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script>
        (function ($) {
            $(window).load(
                function () {

                    $("a[rel='load-content']").click(
                        function (e) {
                            e.preventDefault();
                            var url = $(this).attr("href");
                            $.get(url, function (data) {
                                $(".content .mCSB_container").append(data); //load new content inside .mCSB_container
                                //scroll-to appended content
                                $(".content").mCustomScrollbar("scrollTo",
                                    "h2:last");
                            });
                        });

                    $(".content").delegate(
                        "a[href='top']",
                        "click",
                        function (e) {
                            e.preventDefault();
                            $(".content").mCustomScrollbar("scrollTo",
                                $(this).attr("href"));
                        });

                });
        })(jQuery);
    </script>
    <script type="text/javascript">

    </script>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<jsp:include page="/WEB-INF/views/aside.jsp"/>
<section class="rt_wrap content mCustomScrollbar">
    <div class="rt_content">
        <div class="page_title">
            <h2 class="fl">借出单查询</h2>
        </div>
        <section class="mtb">
            <form action="tzck" method="post">
                <input type="text" name="name" id="name" class="textbox textbox_225" placeholder="输入商品名称"/>
                <input type="submit" value="查询" class="group_btn"/>
            </form>
        </section>
        <table class="table">
            <tr>
                <th>Id</th>
                <th>客户</th>
                <th>商品名称</th>
                <th>数量</th>
                <th>借出日期</th>
                <th>归还日期</th>
                <th>状态</th>
            </tr>
            <tbody id="list">
            <c:forEach items="${list}" var="list" varStatus="num">
                <tr>
                    <td id="id" class="center">${list.ID}</td>
                    <td id="customerId" class="center">${list.CUSTOMER_ID}</td>
                    <td id="hwId" class="center">${list.HW_ID}</td>
                    <td id="num" class="center">${list.NUM}</td>
                    <td id="checkoutDate" class="center">${list.CHECKOUT_DATE}</td>
                    <td id="returnDate" class="center">${list.RETURN_DATE}</td>
                    <td id="status" class="center">${list.STATUS}</td>
                    <td class="center">
                        <a href="${pageContext.request.contextPath}/ckid?id=${list.id}"></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
</body>
</html>
