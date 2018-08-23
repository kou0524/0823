<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ユーザ情報削除画面</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
</head>
<body>
	<div class="container">
		<form:form action="${pageContext.request.contextPath}/user/delete"
			method="post" modelAttribute="deleteForm">

			<h2>ユーザ情報の削除</h2>
			<table>
				<tr>
					<td><form:label path="userID" cssErrorClass="error-label">　　ユーザＩＤ：</form:label></td>
					<td><form:label path="userID" />${f:h(deleteForm.userID)}</td>
					<form:hidden path="userID" value="${f:h(deleteForm.userID)}" />
					<td><form:errors path="userID" cssClass="error-messages" /></td>

				</tr>
				<tr>
					<td><form:label path="userName" cssErrorClass="error-label">　　　　　名前：</form:label></td>
					<td><form:label path="userName" />${f:h(deleteForm.userName)}</td>
					<form:hidden path="userName"
						value="${f:h(deleteForm.userName)}" />
					<td><form:errors path="userName" cssClass="error-messages" /></td>
				</tr>
				<tr>
					<td><form:label path="birthday" cssErrorClass="error-label">　　　生年月日：</form:label></td>
					<td><form:label path="birthday" />${f:h(deleteForm.birthday)}</td>
					<form:hidden path="birthday" value="${f:h(deleteForm.birthday)}" />
					<td><form:errors path="birthday" cssClass="error-messages" /></td>
				</tr>
				<tr>
					<td><form:label path="address" cssErrorClass="error-label">　　　　　住所：</form:label></td>
					<td><form:label path="address" />${f:h(deleteForm.address)}</td>
					<form:hidden path="address" value="${f:h(deleteForm.address)}" />
					<td><form:errors path="address" cssClass="error-messages" /></td>
				</tr>
				<tr>
					<td><form:label path="phoneNumber" cssErrorClass="error-label">　　　電話番号：</form:label></td>
					<td><form:label path="phoneNumber" />${f:h(deleteForm.phoneNumber)}</td>
					<form:hidden path="phoneNumber" value="${f:h(deleteForm.phoneNumber)}" />
					<td><form:errors path="phoneNumber" cssClass="error-messages" /></td>
				</tr>
				<tr>
					<td><label for="role">　　　　　権限：</label></td>
					<td><span id="role">${f:h(deleteForm.role)}</span></td>
				</tr>
				<tr>
					<td><form method="post"
							action="${pageContext.request.contextPath}/user/delete">
							<input type="submit" id="finish" name="finish" value="削除" />
						</form></td>
				</tr>
			</table>
		</form:form>
		<form method="get"
			action="${pageContext.request.contextPath}/user/search">
			<input type="submit" name="form" value="検索画面へ戻る" />
		</form>
	</div>

</body>
</html>