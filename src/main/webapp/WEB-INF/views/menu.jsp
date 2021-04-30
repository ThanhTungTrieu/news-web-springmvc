<%@ include file="/common/taglib.jsp"%>

<ul>
    <c:forEach var="item" items="${menu}" >
        <li>${item}</li>
    </c:forEach>
</ul>