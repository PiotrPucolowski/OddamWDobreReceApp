<%--
  Created by IntelliJ IDEA.
  User: pucek
  Date: 27.06.2022
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="formSteps.jsp"/>
<section>
    <div data-step="4">
        <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

        <div class="form-section form-section--columns">
            <div class="form-section--column">
                <h4>Adres odbioru</h4>
                <div class="form-group form-group--inline">
                    <label> Ulica <input type="text" name="address" /> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label> Miasto <input type="text" name="city" /> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label>
                        Kod pocztowy <input type="text" name="postcode" />
                    </label>
                </div>

                <div class="form-group form-group--inline">
                    <label>
                        Numer telefonu <input type="phone" name="phone" />
                    </label>
                </div>
            </div>

            <div class="form-section--column">
                <h4>Termin odbioru</h4>
                <div class="form-group form-group--inline">
                    <label> Data <input type="date" name="data" /> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label> Godzina <input type="time" name="time" /> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label>
                        Uwagi dla kuriera
                        <textarea name="more_info" rows="5"></textarea>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group form-group--buttons">
            <form:button name="formStep4Back" class="btn prev-step">Wstecz</form:button>
            <form:button name="formStep4Submit" class="btn next-step">Dalej</form:button>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp"/>
