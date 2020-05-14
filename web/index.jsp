<%@ page import="java.util.ArrayList" %>
<%@ page import="codegym.Customer" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/05/2020
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>List Customer</title>
</head>
<body>
<%
    ArrayList<Customer> listCustomer = new ArrayList<>();
    listCustomer.add(new Customer("Taylor Swift", "02/09/1989", "Chicago", "ts.jpg"));
    listCustomer.add(new Customer("Justin Bieber", "25/03/1992", "China", "jb.jpg"));
    listCustomer.add(new Customer("Park Ji-yeon", "08/10/1994", "Korea", "je.jpg"));
    listCustomer.add(new Customer("Karen Gillan", "02/11/1990", "New York", "jm.jpg"));
    listCustomer.add(new Customer("Tom Cruise", "19/09/1986", "LA", "tc.jpg"));
    pageContext.setAttribute("listCustomer", listCustomer);
%>
<form>
    <table style = "color: darkcyan" border="1px">
        <tr><th colspan="4">Customers List</th></tr>
        <tr>
            <td width="300px" height="60px">Full Name</td>
            <td width="300px" height="60px">Date Of Birth</td>
            <td width="300px" height="60px">City/Country</td>
            <td width="300px" height="60px">Avatar</td>
        </tr>
        <c:forEach var="customer" items="#{listCustomer}">
            <tr>
                <td><c:out value="${customer.name}"/></td>
                <td><c:out value="${customer.dateOfBirth}"/></td>
                <td><c:out value="${customer.address}"/></td>
                <td><img width="300px" height="150px" src="images/<c:out value="${customer.image}"/>"></td>
            </tr>
        </c:forEach>
    </table>
</form>


</body>
</html>
