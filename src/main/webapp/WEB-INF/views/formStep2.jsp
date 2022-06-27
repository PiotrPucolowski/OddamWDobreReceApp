<%--
  Created by IntelliJ IDEA.
  User: pucek
  Date: 27.06.2022
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="formSteps.jsp"/>
<section>
    <div data-step="2">
        <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

        <div class="form-group form-group--inline">
            <label>
                Liczba 60l worków:
                <input type="number" name="bags" step="1" min="1" />
            </label>
        </div>

        <div class="form-group form-group--buttons">
            <form:button name="formStep2Back" class="btn prev-step">Wstecz</form:button>
            <form:button name="formStep2Submit" class="btn next-step">Dalej</form:button>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp"/>