<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${tasks != null}">
                <h2>id：${tasks.id} タスク詳細ページ</h2>
                <table>
                    <tbody>
                        <tr>
                            <th width="26%">作成日時</th>
                            <td width="66%"><fmt:formatDate value="${tasks.created_at}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        </tr>
                        <tr>
                            <th width="26%">更新日時</th>
                            <td width="66%"><fmt:formatDate value="${tasks.updated_at}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        </tr>
                        <tr>
                            <th width="26%">タスク</th>
                            <td width="66%"><c:out value="${tasks.content}"/></td>
                        </tr>
                    </tbody>
                </table>
                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
                <p><a href="${pageContext.request.contextPath}/edit?id=${tasks.id}">このタスクを編集する</a></p>
            </c:when>
            <c:otherwise>
            <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>