<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.appraisal_case_images.model.*" %>

<%
	Appraisal_Case_ImagesService appraisalCaseImagesSvc = new Appraisal_Case_ImagesService();
	List<Appraisal_Case_ImagesVO> list = appraisalCaseImagesSvc.getAll();
	pageContext.setAttribute("list",list);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>所有估價照片 - A_Case_Images.jsp</title>
</head>
<body>

<table>
    <tr><td>
    	<h3>所有照片資料</h3>
        <h4><a href="select_page.jsp">回首頁</a></h4>
	</td></tr>
</table>

<c:if test="${not empty errorMsgs }">
	<font style="color:red">請修正以下錯誤：</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>
<table>
	<tr>
		<th>估價案件圖片編號</th>
		<th>估價案件編號</th>
		<th>估價圖片</th>
		<th>修改</th>
		<th>刪除</th>
	</tr>
	
	<c:forEach var="appraisalCaseImagesVO" items="${list}" >
		<tr>
			<td>${appraisalCaseImagesVO.aci_no}</td>
			<td>${appraisalCaseImagesVO.aca_no}</td>
			<td>${appraisalCaseImagesVO.aci_img}</td>
			<td>
				<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/appraisal_case_images/appraisal_case_images.do" style="margin-bottom: 0px;">
					<input type="submit" value="修改">
					<input type="hidden" name="aci_no" value="${appraisalCaseImagesVO.aci_no}">
					<input type="hidden" name="action" value="getOne_For_Update">
				</FORM>
			</td>
			<td>
				<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/appraisal_case_images/appraisal_case_images.do" style="margin-bottom: 0px;">
					<input type="submit" value="修改">
					<input type="hidden" name="aci_no" value="${appraisalCaseImagesVO.aci_no}">
					<input type="hidden" name="action" value="delete">
			</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>