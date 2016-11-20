<%@ page import="java.util.Enumeration" %>
<%--
file: index.jsp
desc: Test installation of Java EE SDK 5
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Hello World - test the Java EE SDK installation--%>
    <%--</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<g:include view="ecommpay/menu.gsp"/>--%>
<%--<div class="col-xs-12 col-sm-9">--%>
    <%--<div class="jumbotron">--%>
        <%--<h1>Ecommpay</h1>--%>
    <%--</div>--%>

    <%--<h2>Свойства FxPay</h2>--%>
    <%--<dl>--%>
        <%--<dt>web-services.EcommPay.servers</dt>--%>
        <%--<dd>Нужно добавить через  пробел IP адрес сервера заглушек <ins>${request.localAddr}</ins></dd>--%>
    <%--</dl>--%>

    <%--<table border="1px">--%>
        <%--<tr>--%>
            <%--<th>Операция</th>--%>
            <%--<th>Свойство в FxPay</th>--%>
            <%--<th>Адрес в заглушках</th>--%>
            <%--<th>action</th>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Добавление карты</td>--%>
            <%--<td>fxbank.pay_ecommpay_cc.url</td>--%>
            <%--<td>/Stub-0.1/ecommpay/payment</td>--%>
            <%--<td></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Снятие</td>--%>
            <%--<td>web-services.EcommPay.bvi.send.url</td>--%>
            <%--<td>/Stub-0.1/ecommpay/gate</td>--%>
            <%--<td>payout</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Запрос выписки</td>--%>
            <%--<td>web-services.EcommPay.interfaces.report</td>--%>
            <%--<td>/Stub-0.1/ecommpay/gate</td>--%>
            <%--<td>report</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Получение статуса транзакции</td>--%>
            <%--<td>web-services.EcommPay.interfaces.report</td>--%>
            <%--<td>/Stub-0.1/ecommpay/gate</td>--%>
            <%--<td>order_info</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Выполнение мгновенного платежа</td>--%>
            <%--<td>web-services.EcommPay.interfaces.query</td>--%>
            <%--<td>/Stub-0.1/ecommpay/gate</td>--%>
            <%--<td>rebill</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Возврат операции для платежей CUP</td>--%>
            <%--<td>web-services.EcommPay.bvi.refund.qwipi.url</td>--%>
            <%--<td>/Stub-0.1/ecommpay/gate</td>--%>
            <%--<td>refund</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Возврат операции для платежей кредиткой</td>--%>
            <%--<td>web-services.EcommPay.bvi.refund.url</td>--%>
            <%--<td>/Stub-0.1/ecommpay/gate</td>--%>
            <%--<td>refund</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
    <%--<br/>--%>
    <%--<fieldset>--%>
        <%--<legend>Добавление карты</legend>--%>
        <%--<p>--%>
            <%--После перехода на заглушку необходимо ввести информацию о карте.<br/>--%>
            <%--Для получения удачного платежа необходимо выбрать "Оплатить". Платеж получит статус = указанному в настройках (поле Status секции "Платежи авторизации").<br/>--%>
            <%--Для неудачного соответственно необходимо выбрать "Неудачный платеж". Статус 5 (failed).<br/>--%>
            <%--Далее отправляется уведомление на адрес, указанный в настройках <b>Success URL</b>.<br/>--%>
            <%--Затем происходит редирект на страницу, указанную в параметре <b>decline_url</b> или <b>success_url</b> запроса в зависимости от выбранного результата операции.<br/>--%>
        <%--</p>--%>
    <%--</fieldset>--%>

    <%--<br/>--%>
    <%--<fieldset>--%>
        <%--<legend>Снятие</legend>--%>
        <%--<p>--%>
            <%--После перехода на заглушку выполняется проверка возможности совершения операции снятия, для этого ищется транзакция добавления карты по параметру <b>transaction_id</b>.<br/>--%>
            <%--Если транзакция не найдена, то возвращается ответ с кодом = 1.<br/>--%>
            <%--В противном случае код в ответе будет заполнен параметром, указанным в настройках заглушки (Снятия -> Code).<br/>--%>
        <%--</p>--%>
    <%--</fieldset>--%>

    <%--<br/>--%>
    <%--<fieldset>--%>
        <%--<legend>Запрос выписки</legend>--%>
        <%--<p>--%>
            <%--После перехода на заглушку выполняется поиск транзакций по дате операции <b>completedAt</b>.<br/>--%>
            <%--В ответе - массив операций.<br/>--%>
        <%--</p>--%>
    <%--</fieldset>--%>

    <%--<br/>--%>
    <%--<fieldset>--%>
        <%--<legend>Получение статуса транзакции</legend>--%>
        <%--<p>--%>
            <%--После перехода на заглушку выполняется поиск транзакции по полю <b>external_id</b>.<br/>--%>
            <%--Если у найденной транзакции не указан статус, то ей присваивается status_id = 1 (что соответствует UNDER_REVIEW).--%>
            <%--Это могло произойти, если после перехода на заглушку при добавлении карты не было произведено никаких действий ("Оплатить" или "Неудачный платеж")<br/>--%>
            <%--Далее возвращается ответ. При этом если в секции "Платежи авторизации" установлен status = 1, то параметры ответа <b>transaction</b> и <b>callbacks</b> не заполняются.<br/>--%>
        <%--</p>--%>
    <%--</fieldset>--%>

    <%--<br/>--%>
    <%--<fieldset>--%>
        <%--<legend>Выполнение мгновенного платежа</legend>--%>
        <%--<p>--%>
            <%--После перехода на заглушку выполняется сохранение транзакции.<br/>--%>
            <%--Далее возвращается ответ. Поле code = 0.<br/>--%>
        <%--</p>--%>
    <%--</fieldset>--%>

    <%--<br/>--%>
    <%--<fieldset>--%>
        <%--<legend>Возврат операции</legend>--%>
        <%--<p>--%>
            <%--После перехода на заглушку выполняется поискя транзакции по параметру <b>transaction_id</b>.<br/>--%>
            <%--Далее возвращается ответ. Поле code = 0.<br/>--%>
        <%--</p>--%>
    <%--</fieldset>--%>

<%--</div>--%>
<%--</body>--%>
<%--</html>--%>

<%--
  Created by IntelliJ IDEA.
  User: pyatkov-vd
  Date: 07.10.2014
  Time: 15:43
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%--<script type="text/javascript" src="../js/script.js"></script>--%>
<html>
<head>
    <title>ЛОГИН</title>
    <link rel="stylesheet" type="text/css" media="all" uri="/css/global.css" />
    <link rel="icon" type="image/png"  href="/images/cash_64.png" />
    <meta name="layout" content="bootstrap"/>
    <script language="JavaScript" type="text/javascript" src="/js/script.js"></script>

</head>
<body>
<div id="layout">
    <div id="page_body">
        <div id="header">
            <div id="logo">
               <img src="/images/cash_64.png" alt="Логин" width="200" height="150" class="png" />
            </div>
            <div class="merchant_logo">
                <div class="logo_container">Трам пампам</div>
            </div>
        </div>

    <form action="index.jsp>" method="post" onsubmit="return failClick(this)" name="reg_form" id="reg_form">
        <div id="content">
            <div id="main_content">
                <h1>Вход в личный кабинет</h1>

                <div class="order_details">
                    <h3>
                        <strong class="right">
                            Сумма: <formatNumber number="123 / 100.0" type="currency" currencyCode="rrr" />
                        </strong>5266.12
                    </h3>
                </div>


                    <div class="card_details">
                        <h3>Логин и пароль для регистрации</h3>


                        <table>
                            <tr>
                                <td><label for="login">Логин:</label></td>
                                <td><input type="text" name="login" id="login" class="login" maxlength="10" alt="УПС"/></td>
                            </tr>
                            <tr>
                                <td><label for="payment_type_id">Тип клиента так просто:</label></td>
                                <td>
                                    <select name="payment_type_id" id="payment_type_id" class="card_type">
                                        <option value="1" selected="selected">VISA</option>
                                        <option value="2">MASTERCARD</option>
                                        <option value="3">Maestro</option>
                                        <option value="4">American Express</option>
                                        <option value="5">Diners Club</option>
                                        <option value="6">JCB</option>
                                        <option value="7">Discover</option>
                                        <option value="8">Solo</option>
                                        <option value="9">Switch</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label>Пароль:</label></td>
                                <td><input type="password" name="password" id="password" class="login" maxlength="10" /></td>
                            </tr>

                            <tr>
                                <td><submitButton class="btn btn-default" name="clientCreate" value="Оплатить"/></td>
                                <td><input type="button" onclick="failClick()" class="btn btn-danger" name="clientCreate" value="Зарегистрироваться"/></td>
                            </tr>
                        </table>
                    </div>

                </form>
            </div>

            <%--<script type="application/javascript">--%>



    <%--function failClick() {--%>
        <%--window.location.href = "./plugins/login/index.jsp";--%>
        <%--jQuery("<input type='hidden' name='signal' value='fail'/>").appendTo("form[name=payment_form]");--%>
        <%--jQuery("form[name=payment_form]").submit();--%>
    <%--}--%>
<%--</script>--%>


        </div>
    </div>
</div>
<div id="footer">
    <div class="footer_inner">
        <p class="secure">&copy; 2014 Сервис предоставлен компанией <link>ecommpay.com</link>. Система электронных платежей.</p>
        <p>
            <img src="../images/logo_lite.png" alt="EcommPay" width="115" height="21" />
        </p>
    </div>
</div>

</body>
</html>
