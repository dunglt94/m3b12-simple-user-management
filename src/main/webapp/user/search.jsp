<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 02/12/2024
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>User Management Application</title>
</head>
<style>
  h1, h2 {
    text-align: center;
    margin: 10px 0;
  }

  div {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  table {
    border-collapse: collapse;
    box-shadow:  0 0 5px 2px rgba(0,0,0,0.3);
  }

  th {
    padding: 10px;
  }

  td {
    border-bottom: 1px solid black;
    padding: 10px;
    text-align: left;
  }

  a {
    text-decoration: none;
    collapse: black;
  }

  a:hover {
    text-decoration: underline;
  }

  span {
    font-weight: bold;
  }
</style>
<body>
<h1>User Management</h1>
<h2>
  <a href="/users">Back to list</a>
</h2>
<div>
  <form method="get">
    <input type="hidden" name="action" value="search">
    <label for="search"><input type="text" name="country" id="search"></label>
    <input type="submit" value="Search">
  </form>
</div>
<div>
  <c:if test='${empty searchedUser}'>
    <h3>${message}</h3>
  </c:if>
</div>
<div>
<c:if test='${!empty searchedUser}'>
  <table>
    <caption><h2>Searched Users</h2></caption>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${searchedUser}">
      <tr>
        <td><c:out value="${user.id}"/></td>
        <td><c:out value="${user.name}"/></td>
        <td><c:out value="${user.email}"/></td>
        <td><c:out value="${user.country}"/></td>
        <td>
          <a href="/users?action=edit&id=${user.id}">Edit</a>
          <span>|</span>
          <a href="/users?action=delete&id=${user.id}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</c:if>
</div>
</body>
</html>
