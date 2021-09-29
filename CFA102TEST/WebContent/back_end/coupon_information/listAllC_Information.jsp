<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.coupon_information.model.*"%>

<%
	Coupon_InformationService couponInformaionSvc = new Coupon_InformationService();
	List<Coupon_InformationVO> list = couponInformaionSvc.getAll();
	pageContext.setAttribute("list", list);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>所有優惠券資訊</title>

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
		<tr>
			<td>
				<h3>所有優惠券資訊資料</h3>
				<h4>
					<a href="<%= request.getContextPath() %>/back_end/coupon_information/select_page.jsp">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<table>
		<tr>
			<th>優惠券編號</th>
			<th>優惠券名稱</th>
			<th>編碼</th>
			<th>優惠券開始時間</th>
			<th>優惠券結束時間</th>
			<th>優惠券促銷折扣</th>
			<th>優惠券內容</th>
			<th>修改</th>
			<th>刪除</th>
		</tr>
		<%@ include file="pages/page1.file" %> 
		<c:forEach var="couponInformaionVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">

			<tr>
				<td>${couponInformaionVO.ci_no }</td>
				<td>${couponInformaionVO.ci_name }</td>
				<td>${couponInformaionVO.ci_code }</td>
				<td><fmt:formatDate value="${couponInformaionVO.ci_start_time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td><fmt:formatDate value="${couponInformaionVO.ci_end_time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${couponInformaionVO.discount }</td>
				<td>${couponInformaionVO.ci_content}</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%= request.getContextPath()%>/back_end/coupon_information/coupon_information.do"
						style="margin-bottom: 0px;">
						<input type="submit" value="修改"> <input type="hidden"
							name="ci_no" value="${couponInformaionVO.ci_no}">
						<input type="hidden" name="action" value="getOne_For_Update">
					</FORM>
				</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%= request.getContextPath()%>/back_end/coupon_information/coupon_information.do"
						style="margin-bottom: 0px;">
						<input type="submit" value="刪除"> <input type="hidden"
							name="ci_no" value="${couponInformaionVO.ci_no}">
						<input type="hidden" name="action" value="delete">
					</FORM>
				</td>
			</tr>
		</c:forEach>
	</table>
<%@ include file="pages/page2.file" %>

</body>
</html>