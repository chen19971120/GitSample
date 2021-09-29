<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>優惠券資訊首頁</title>
</head>
<body>
	<table id="table-1">
		<tr>
			<td><h3>優惠券資訊首頁</h3></td>
		</tr>
	</table>

	<h3>資料查詢：</h3>

<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

	<ul>

		<li><a href="<%= request.getContextPath()%>/back_end/coupon_information/listAllC_Information.jsp">查詢所有優惠券資訊</a></li>
		<li>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back_end/coupon_information/coupon_information.do">
				<b>輸入優惠券資訊編號：</b>
				<input type="text" name="ci_no">
				<input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="送出">
			</FORM>
		</li>			
		<jsp:useBean id="coupon_informationSvc" scope="page" class="com.coupon_information.model.Coupon_InformationService" />
		<li>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back_end/coupon_information/coupon_information.do">
				<b>選擇優惠券資訊名稱：</b> <select size="1" name="ci_no">
					<c:forEach var="coupon_informationVO" items="${coupon_informationSvc.all}">
						<option value="${coupon_informationVO.ci_no}">${coupon_informationVO.ci_name}
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="送出">
			</FORM>
		</li>
	</ul>
	
	<h3>優惠券資訊管理</h3>

<ul>
  <li><a href='<%= request.getContextPath()%>/back_end/coupon_information/addC_Information.jsp'>Add</a></li>
</ul>

</body>
</html>