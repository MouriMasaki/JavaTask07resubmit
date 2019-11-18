<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="tasks" items="${tasks}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${tasks.id}">
                        <c:out value="${tasks.id}" />
                    </a>
                    ：<fmt:formatDate value="${tasks.created_at}" pattern="yyyy/MM/dd HH:mm:ss"/>
                    ：<c:out value="${tasks.content}" />
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">新規タスクの入力</a></p>

    </c:param>
</c:import>