<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.coupon_information.model.*"%>

<%
	Coupon_InformationVO couponInformaionVO = (Coupon_InformationVO) request.getAttribute("couponInformaionVO");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>優惠券資訊資料新增</title>

</head>
<body>

	<table>
		<tr>
			<td><h3>優惠券資訊資料新增</h3></td>
			<td><h4>
					<a href="<%=request.getContextPath()%>/back_end/coupon_information/select_page.jsp">回首頁</a>
				</h4></td>
		</tr>
	</table>

	<h3>資料新增:</h3>

	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<FORM METHOD="post"
		ACTION="<%= request.getContextPath()%>/back_end/coupon_information/coupon_information.do">
		<table>
			<tr>
				<td>優惠券名稱:<font color=red><b>*</b></font></td>
				<td><input type="text" name="ci_name" size="45"
					value="<%=(couponInformaionVO == null) ? "消費滿" : couponInformaionVO.getCi_name()%>"></td>
			</tr>
			<tr>
				<td>編碼:<font color=red><b>*</b></font></td>
				<td><input type="text" name="ci_code" size="45"
					value="<%=(couponInformaionVO == null) ? "ABC490" : couponInformaionVO.getCi_code()%>"></td>
			</tr>
			<tr>
				<td>優惠券開始時間:<font color=red><b>*</b></font></td>
				<td><input type="text" name="ci_start_time" id="start_dateTime"></td>
			</tr>
			<tr>
				<td>優惠券結束時間:<font color=red><b>*</b></font></td>
				<td><input type="text" name="ci_end_time" id="end_dateTime"></td>
			</tr>
			<tr>
				<td>優惠券促銷折扣:<font color=red><b>*</b></font></td>
				<td><input type="text" name="discount"size="45"></td>
			</tr>
			<tr>
				<td>優惠券內容:<font color=red><b>*</b></font></td>
				<td><textarea rows="5" name="ci_content"></textarea></td>
			</tr>

		</table>
		<br> <input type="hidden" name="action" value="insert"> <input
			type="submit" value="送出新增">
	</FORM>

</body>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
</style>
<script>
$.datetimepicker.setLocale('zh'); // kr ko ja en
$(function(){
	 $('#start_dateTime').datetimepicker({
	  format:'Y-m-d H:i:s',
	  onShow:function(){
	   this.setOptions({
	    maxDate:$('#end_dateTime').val()?$('#end_dateTime').val():false
	   })
	  },
	  timepicker:true,
	  step: 1
	 });
	 
	 $('#end_dateTime').datetimepicker({
	  format:'Y-m-d H:i:s',
	  onShow:function(){
	   this.setOptions({
	    minDate:$('#start_dateTime').val()?$('#start_dateTime').val():false
	   })
	  },
	  timepicker:true,
	  step: 1
	 });
});
</script>
</html>