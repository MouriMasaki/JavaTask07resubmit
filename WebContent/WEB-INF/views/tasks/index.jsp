<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
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

        <div id="pagination">
            （全 ${tasks_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((tasks_count - 1) / 15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
        <p><a href="${pageContext.request.contextPath}/new">新規タスクの入力</a></p>

    </c:param>
</c:import>