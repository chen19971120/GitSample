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
<title>優惠券資訊資料</title>

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
		<tr><td><h3>優惠券資訊資料</h3>
				<h4><a href="<%= request.getContextPath()%>/back_end/coupon_information/select_page.jsp">回首頁</a></h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>優惠券編號</th>
			<th>優惠券名稱</th>
			<th>編碼</th>
			<th>優惠券開始時間</th>
			<th>優惠券結束時間</th>
			<th>優惠券促銷折扣</th>
			<th>優惠券內容</th>
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