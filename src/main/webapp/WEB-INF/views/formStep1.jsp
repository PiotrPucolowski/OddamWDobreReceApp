<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: pucek
  Date: 27.06.2022
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="formSteps.jsp"/>
<section>
<div class="form--steps-container">
    <div class="form--steps-counter">Krok <span>1</span>/4</div>

    <form:form  modelAttribute="form">
    <!-- STEP 1: class .active is switching steps -->
    <div data-step="1" class="active">
        <h3>Zaznacz co chcesz oddać:</h3>

        <div class="form-group form-group--checkbox">
            <label>
                <input
                        type="checkbox"
                        name="category"
                        value="clothes-to-use"
                />
                <span class="checkbox"></span>
                <span class="description"
                >ubrania, które nadają się do ponownego użycia</span
                >
            </label>
        </div>

        <div class="form-group form-group--checkbox">
            <label>
                <input
                        type="checkbox"
                        name="categories"
                        value="clothes-useless"
                />
                <span class="checkbox"></span>
                <span class="description">ubrania, do wyrzucenia</span>
            </label>
        </div>

        <div class="form-group form-group--checkbox">
            <label>
                <input type="checkbox" name="categories" value="toys" />
                <span class="checkbox"></span>
                <span class="description">zabawki</span>
            </label>
        </div>

        <div class="form-group form-group--checkbox">
            <label>
                <input type="checkbox" name="categories" value="books" />
                <span class="checkbox"></span>
                <span class="description">książki</span>
            </label>
        </div>

        <div class="form-group form-group--checkbox">
            <label>
                <input type="checkbox" name="categories" value="other" />
                <span class="checkbox"></span>
                <span class="description">inne</span>
            </label>
        </div>

        <div class="form-group form-group--buttons">
            <form:button name="formStep1Submit" class="btn next-step">Dalej</form:button>
        </div>
    </div>
    </form:form>
</div>
</section>
<jsp:include page="footer.jsp"/>
