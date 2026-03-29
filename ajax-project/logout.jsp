<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>asd</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>name</td>
				<td><input type="text" id="registerName" /></td>
			</tr>
			<tr>
				<td>age</td>
				<td><input type="text" id="registerAge" /></td>
			</tr>
			<tr>
				<td>gender</td>
				<td>
					<label>남자</label>
					<input type="radio" id="registerGender" autocomplete="off" value="남자" checked/><br/>
					<label>여자</label>
					<input type="radio" id="registerGender" autocomplete="off" value="여자"/>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>