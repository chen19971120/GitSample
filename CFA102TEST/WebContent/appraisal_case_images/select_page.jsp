<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>首頁</title>
</head>
<body>
   <table id="table-1">
        <tr><td><h3>首頁</h3><h4>MVC</h4></td></tr>
    </table>

    <h3>資料查詢：</h3>

    <c:if test="${not empty erroMsgs}">
        <font style="color:red">請修正以下錯誤</font>
        <ul>
	        <c:forEach var="message" items="${errorMsgs}">
				<li style="color:red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>
	
<%-- 	<jsp:useBean id="appraisalCaseImagesSvc" scope="page" class="com.appraisal_case_images.model.Appraisal_Case_ImagesService" /> --%>
	
<!-- 	<ul> -->
<!-- 		<li><a href="listAllA_Case_Images.jsp">查詢所有估價照片</a></li> -->
<!-- 		<li> -->
<!-- 			<FORM METHOD="post" ACTION="appraisal_case_images.do"> -->
<!-- 			<b>選擇估價案件圖片編號：</b> -->
<!-- 			<select size="1" name="aci_no"> -->
<%-- 				<c:forEach var="appraisalCaseImagesVO" items=<%= appraisalCaseImagesSvc.getAll() %>> --%>
<%-- 					<option value="${appraisalCaseImagesVO.aci_no}">${appraisalCaseImagesVO.aci_no} --%>
<%-- 				</c:forEach> --%>
<!-- 			</select> -->
<!-- 			<input type="hidden" name="action" value="getOne_For_Display"> -->
<!-- 			<input type="submit" value="送出"> -->
<!-- 			</FORM> -->
<!-- 		</li> -->
<!-- 	</ul> -->
</body>
</html>