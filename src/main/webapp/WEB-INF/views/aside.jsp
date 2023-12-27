<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2023/11/27
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="lt_aside_nav content mCustomScrollbar">
    <ul>
        <li>
            <dl>
                <dt>用户信息管理</dt>
                <!--当前链接则添加class:active-->
                <dd>
                    <a href="${pageContext.request.contextPath}\user\sy">用户查询</a>
                </dd>
                <dd>
                    <a href="${pageContext.request.contextPath}\user\tjyh">用户添加</a>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>货物信息管理</dt>
                <dd>
                    <a href="${pageContext.request.contextPath}\user\tzhw">货物查询</a>
                </dd>
                <dd>
                    <a href="${pageContext.request.contextPath}\user\tzkc">库存查询</a>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>入库单信息管理</dt>
                <dd>
                    <a href="${pageContext.request.contextPath}\user\tzrk">入库单新建</a>
                </dd>
                <dd>
                    <a href="${pageContext.request.contextPath}\user\tzrksh" >入库单审核</a>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>出库信息管理</dt>
                <dd>
                    <a href="${pageContext.request.contextPath}\user\tzckxs">出库单新建</a>
                </dd>
                <dd>
                    <a href="${pageContext.request.contextPath}\user\tzcksh">出库单审核</a>
                </dd>

            </dl>
        </li>
        <%--        <li>--%>
        <%--            <dl>--%>
        <%--                <dt>借出单信息管理</dt>--%>
        <%--                <dd>--%>
        <%--                    <a href="${pageContext.request.contextPath}\iou\list">借出单查询</a>--%>
        <%--                </dd>--%>
        <%--                <dd>--%>
        <%--                    <a href="${pageContext.request.contextPath}\user\tzcksh">借出单新建</a>--%>
        <%--                </dd>--%>

        <%--            </dl>--%>
        <%--        </li>--%>
        <li>
            <dl>
                <dt>报表管理</dt>
                <dd>
                    <a href="${pageContext.request.contextPath}\user\tzbb">生成报表</a>
                </dd>
            </dl>
        </li>
    </ul>
</aside>
