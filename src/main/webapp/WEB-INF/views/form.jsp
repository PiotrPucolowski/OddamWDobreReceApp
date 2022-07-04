<%--
  Created by IntelliJ IDEA.
  User: pucek
  Date: 23.06.2022
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="headerForm.jsp"/>

<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>

    <div class="form--steps-container">
        <div class="form--steps-counter">Krok <span>1</span>/4</div>


        <form:form modelAttribute="donation" method="post">
            <!-- STEP 1: class .active is switching steps -->
            <div data-step="1" class="active">
                <h3>Zaznacz co chcesz oddać:</h3>

                <c:forEach var="categ" items="${categories}" begin="1" end="100" varStatus="loop">
                    <div class="form-group form-group--checkbox">
                        <label>
                            <input type="checkbox" value="${categ.id}"/>
                            <span class="checkbox"></span>
                            <div class="name"><c:out value="${categ.name}"/> </div>
                        </label>
                    </div>
                </c:forEach>


                <div class="form-group form-group--buttons">
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 2 -->
            <div data-step="2">
                <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

                <div class="form-group form-group--inline">
                    <label>
                        Liczba 60l worków:
                       <form:input path="quantity" type="number" id="quantity" />
                    </label>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>



            <!-- STEP 4 -->
            <div data-step="3">
                <h3>Wybierz organizacje, której chcesz pomóc:</h3>
                <c:forEach var="institution" items="${institutions}" varStatus="loop">
                    <div class="form-group form-group--checkbox">
                        <label>
                           <input type="radio" value="${institution.id}" />
                            <span class="checkbox radio"></span>
                            <span class="description">
                  <div class="title">${institution.name}</div>
                  <div class="subtitle">${institution.description}
                  </div>
                </span>
                        </label>
                    </div>
                </c:forEach>


                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 5 -->
            <div data-step="4">
                <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>
                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Adres odbioru</h4>
                        <div class="form-group form-group--inline">
                            <label> Ulica <form:input type="text" path="street" id="street"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> Miasto <form:input type="text"  path="city" id="city" /> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Kod pocztowy <form:input type="text" path="zipCode" id="zipCode" />
                            </label>
                        </div>

<%--                        <div class="form-group form-group--inline">--%>
<%--                            <label>--%>
<%--                                Numer telefonu <input type="phone" name="phone" />--%>
<%--                            </label>--%>
<%--                        </div>--%>
                    </div>

                    <div class="form-section--column">
                        <h4>Termin odbioru</h4>
                        <div class="form-group form-group--inline">
                            <label> Data <form:input type="date"  path="pickUpDate" id="date" /> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> Godzina <form:input type="time" path="pickUpTime" id="time"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Uwagi dla kuriera
                                <form:textarea  rows="5" path="pickUpComment" id="description"></form:textarea>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>


            <!-- STEP 6 -->

            <div data-step="5">
                <h3>Podsumowanie Twojej darowizny</h3>
                donation
                <div class="summary">
                    <div class="form-section">
                        <h4>Oddajesz:</h4>
                        <form action = "form" method = "post">
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <span> Ilość worków: <%= request.getParameter("quantity")%></span>
                            </li>

                            <li>
                                <span class="icon icon-hand"></span>
                                <span class="summary--text"
                                > Dla fundacji <%= request.getParameter("institution")%>></span></span
                                >
                            </li>
                        </ul>
                        </form>
                    </div>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Adres odbioru:</h4>
                            <ul>
                                <li><evaluate type="street"/> </li>
                                <li> <form:input type="text" path="city" id="City"/></li>
                                <li><form:input type="text" path="zipCode" id="zipCode"/></li>
                            </ul>
                        </div>

                        <div class="form-section--column">
                            <h4>Termin odbioru:</h4>
                            <ul>
                                <li>${donation.pickUpDate}</li>
                                <li>${donation.pickUpTime}</li>
                                <li>${donation.pickUpComment}</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="submit" class="btn">Potwierdzam</button>
                </div>
            </div>
        </form:form>

    </div>
</section>

<%@include file="footer.jsp" %>

<script src="js/app.js"/>"></script>
</body>
</html>