<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <table>
            <tr>
                <th width="5%">ID</th>
                <th width="20%">入力日</th>
                <th width="75%">タスク </th>
            </tr>
            <c:forEach var="tasks" items="${tasks}">
                <tr>
                    <td width="5%">
                        <a href="${pageContext.request.contextPath}/show?id=${tasks.id}" >
                            <c:out value="${tasks.id}" />
                        </a>
                    </td>
                        <td width="20%"><fmt:formatDate value="${tasks.created_at}" pattern="yyyy/MM/dd"/></td>
                        <td width="75%"><c:out value="${tasks.content}" /></td>
                </tr>
            </c:forEach>
        </table>

        <p><a href="${pageContext.request.contextPath}/new">新規タスクの入力</a></p>

    </c:param>
</c:import>