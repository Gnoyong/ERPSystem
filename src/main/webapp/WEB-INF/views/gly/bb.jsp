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
 <meta charset="utf-8"><link rel="icon" href="https://static.jianshukeji.com/highcharts/images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            /* css 代码  */
        </style>
        <script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
        <script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
        <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
        <script src="https://img.hcharts.cn/highcharts/themes/dark-unica.js"></script>
<script>

</script>
</head>
<body>
	<!--header-->
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<!--aside nav-->
	<!--aside nav-->
	<jsp:include page="/WEB-INF/views/aside.jsp" />

	<section class="rt_wrap content mCustomScrollbar">
	<div id="container" style="min-width:400px"></div>
        <script>
        var chart = Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                text: '销售总体排行'
            },
            subtitle: {
                text: '数据仅为参考分析'
            },
            xAxis: {
                type: 'category',
                labels: {
                    rotation: -45  // 设置轴标签旋转角度
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: '利润(元)'
                }
            },
            legend: {
                enabled: true
            },
            tooltip: {
                pointFormat: '总利润: <b>{point.y:.1f} 元</b>'
            },
            series: [{
                name: '总利润',
                data: [
				<c:forEach items="${list}" var="list" >
                    ['${list.hw}', ${list.lr}],
                </c:forEach>
                ],
                dataLabels: {
                    enabled: false,
                    rotation: -200,
                    color: '#FFFFFF',
                    align: 'right',
                    format: '', // :.1f 为保留 1 位小数
                    y: 10
                }
            }]
        });
        </script>
	</section>

</body>
<style>
    #container{
        height: 100% !important;
    }
</style>
</html>
