<%--
  Created by IntelliJ IDEA.
  User: pucek
  Date: 27.06.2022
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="formSteps.jsp"/>
<section>
    <div data-step="3">
        <h3>Wybierz organizacje, której chcesz pomóc:</h3>

        <div class="form-group form-group--checkbox">
            <label>
                <input type="radio" name="organization" value="old" />
                <span class="checkbox radio"></span>
                <span class="description">
                  <div class="title">Fundacja “Bez domu”</div>
                  <div class="subtitle">
                    Cel i misja: Pomoc dla osób nie posiadających miejsca
                    zamieszkania
                  </div>
                </span>
            </label>
        </div>

        <div class="form-group form-group--checkbox">
            <label>
                <input type="radio" name="organization" value="old" />
                <span class="checkbox radio"></span>
                <span class="description">
                  <div class="title">Fundacja “Dla dzieci"</div>
                  <div class="subtitle">
                    Cel i misja: Pomoc osobom znajdującym się w trudnej sytuacji
                    życiowej.
                  </div>
                </span>
            </label>
        </div>

        <div class="form-group form-group--buttons">
            <form:button name="formStep3Back" class="btn prev-step">Wstecz</form:button>
            <form:button name="formStep3Submit" class="btn next-step">Dalej</form:button>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"/>
