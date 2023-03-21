<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h1>User Registration Form</h1>
<body>


	<form:form method="POST" modelAttribute="user" action="/reg">
	Enter your Name:
	<form:input path="name" />
	Enter your email:
	<form:input path="email" />
	Enter your gender:
	<form:radiobuttons path="gender" items="${genders}" />
	Enter your password:
	<form:password path="password" showPassWord="true" />
	Enter your Confirm Password:
	<form:password path="confirmPassWord" showPassword="true" />
	Enter your Batches:
	<form:checkboxes path="batches" items="${batches}" />
	Enter your courses:
	<form:select path="courses">
			<form:option value="" lable="please Select" />
			<form:options items="${courses}" />
		</form:select>
		<form:hidden path="hiddenMsg" />

		<input type="submit" name="submit" value="Register">
	</form:form>
</body>