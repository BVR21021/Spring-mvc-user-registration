
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
My Name is:${user.name}
<br>
My Password is=${user.password} My Gender is:${user.gender} My courses
Are:
<br>
<c:forEach var="course" items="${user.courses}">
	<c:out value="${course}" />
	<br>
</c:forEach>
<br>

My batches Are:
<br>
<c:forEach var="batch" items="${user.batches}">
	<c:out value="${batch}" />
	<br>
</c:forEach>
<br>
Your hidden name is ${user.hiddenMsg}
