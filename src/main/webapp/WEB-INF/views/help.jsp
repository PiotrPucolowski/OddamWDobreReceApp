<%--
  Created by IntelliJ IDEA.
  User: pucek
  Date: 27.06.2022
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="head.jsp"/>
<section class="help" id="mainSection">
    <h2>Komu pomagamy?</h2>

    <!-- SLIDE 1 -->
    <div class="help--slides active" data-id="1">
        <p>W naszej bazie znajdziesz listę zweryfikowanych Fundacji, z którymi współpracujemy.
            Możesz sprawdzić czym się zajmują.</p>

        <ul class="help--slides-items">
            <c:forEach var="institution" items="${help}" varStatus="loop">
                <c:if test="${loop.count % 2 != 0}"><li></c:if>
                <div class="col">
                    <div class="title">Fundacja ${institution.name}</div>
                    <div class="subtitle">Cel i misja: ${institution.description}</div>
                </div>
                <c:if test="${loop.count % 2 == 0}"></li></c:if>
            </c:forEach>
        </ul>
    </div>


</section>
<jsp:include page="footer.jsp"/>

