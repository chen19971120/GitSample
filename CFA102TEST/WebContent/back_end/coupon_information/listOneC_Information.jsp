<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.coupon_information.model.*"%>
<%@ page import="com.appraisal_class.model.*"%>

<%
Coupon_InformationVO couponInformationVO = (Coupon_InformationVO) request.getAttribute("couponInformationVO");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>�u�f���T���</title>

<style>
table {
	width: 1600px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 5px;
	text-align: center;
}
</style>

</head>
<body>

	<table id="table-1">
		<tr><td><h3>�u�f���T���</h3>
				<h4><a href="<%= request.getContextPath()%>/back_end/coupon_information/select_page.jsp">�^����</a></h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>�u�f��s��</th>
			<th>�u�f��W��</th>
			<th>�s�X</th>
			<th>�u�f��}�l�ɶ�</th>
			<th>�u�f�鵲���ɶ�</th>
			<th>�u�f��P�P�馩</th>
			<th>�u�f�餺�e</th>
		</tr>
		<tr>
				<td>${couponInformationVO.ci_no }</td>
				<td>${couponInformationVO.ci_name }</td>
				<td>${couponInformationVO.ci_code }</td>
				<td><fmt:formatDate value="${couponInformationVO.ci_start_time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td><fmt:formatDate value="${couponInformationVO.ci_end_time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${couponInformationVO.discount }</td>
				<td>${couponInformationVO.ci_content}</td>
		</tr>
	</table>

</body>
</html>