<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.appraisal_case.model.*"%>

<%
	Appraisal_CaseService appraisalCaseSvc = new Appraisal_CaseService();
	List<Appraisal_CaseVO> list = appraisalCaseSvc.getAll();
	pageContext.setAttribute("list", list);
%>

<jsp:useBean id="appraisalClassSvc" scope="page" class="com.appraisal_class.model.Appraisal_ClassService" />

<!DOCTYPE html>
<html>
<head>
<!--*******************	Start Include CSS File ******************* -->
<%@ include file="../back_include_page/CSS_link.jsp"%>
<!--*******************	End Include CSS File ******************* -->
<meta charset="UTF-8">
<title>YSM-3C 後台管理</title>
<link rel="icon" type="image/png" href="../back_CSS_JS/assets/imgaes/logo/favicon.png">
</head>
<body>

	<table id="table-1">
		<tr>
			<td>
				<h3>所有估價案件資料</h3>
				<h4>
					<a href="<%= request.getContextPath() %>/back_end/appraisal_case/select_page.jsp">回首頁</a>
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

	<table id="appraisalCase">
		<tr>
			<th>估價案件編號</th>
			<th>會員編號</th>
			<th>估價商品名稱</th>
			<th>估價類別</th>
			<th>案件日期</th>
			<th>案見狀態</th>
			<th>報價</th>
			<th>付款方式</th>
			<th>完成日期</th>
			<th>運送方式</th>
			<th>修改</th>
			<th>查看詳情</th>
			<th>查看圖片</th>
		</tr>
		<%@ include file="pages/page1.file" %> 
		<c:forEach var="appraisalCaseVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
			
			<tr ${(appraisalCaseVO.aca_no==param.aca_no) ? 'bgcolor=#CCCCFF':'' }>
				<td>${appraisalCaseVO.aca_no }</td>
				<td>${appraisalCaseVO.mem_no }</td>
				<td>${appraisalCaseVO.aca_itm_id }</td>
				<td>
<!-- 					查詢估價類別名稱 -->
					${appraisalClassSvc.getOneA_Class(appraisalCaseVO.acl_no).acl_id }
					
				</td>
				<td><fmt:formatDate value="${appraisalCaseVO.aca_date }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${appraisalCaseVO.aca_itm_mode }</td>
				<td>${appraisalCaseVO.aca_first_p }</td>
				<td>${appraisalCaseVO.aca_pay }</td>
				<td><fmt:formatDate value="${appraisalCaseVO.aca_comp_date }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${appraisalCaseVO.aca_cod }</td>
				<td>
					<FORM METHOD="post"	ACTION="<%= request.getContextPath()%>/back_end/appraisal_case/appraisal_case.do"style="margin-bottom: 0px;">
						<input type="submit" value="修改"> 
						<input type="hidden"name="aca_no" value="${appraisalCaseVO.aca_no}">
						<input type="hidden" name="requestURL"	value="<%=request.getServletPath()%>"><!--送出本網頁的路徑給Controller-->
						<input type="hidden" name="whichPage"	value="<%=whichPage%>">               <!--送出當前是第幾頁給Controller-->
						<input type="hidden" name="action" value="getOne_For_Update">
					</FORM>
				</td>
				<td>
					<FORM METHOD="post"	ACTION="<%= request.getContextPath()%>/back_end/appraisal_case/appraisal_case.do"style="margin-bottom: 0px;">
						<input type="hidden"name="aca_no" value="${appraisalCaseVO.aca_no}">
						<input type="hidden" name="action" value="information">
						<input type="button" value="查看詳情" onclick="presses(${appraisalCaseVO.aca_no})">
					</FORM>
				</td>
				<td>
					<FORM METHOD="post"	ACTION="<%=request.getContextPath()%>/back_end/appraisal_case_images/appraisal_case_images.do"style="margin-bottom: 0px;">
						<input type="hidden"name="aca_no" value="${appraisalCaseVO.aca_no}">
						<input type="hidden" name="action" value="imagesInformation">
						<input type="button" value="查看圖片" onclick="pressesImg(${appraisalCaseVO.aca_no})">
					</FORM>
				</td>
			</tr>
		</c:forEach>
	</table>
	<script>
		function presses(data){
			window.open("<%= request.getContextPath()%>/back_end/appraisal_case/appraisal_case.do?aca_no=" + data + "&action=information","","height=750,width=500,left=65,top=157,resizable=yes,scrollbars=yes");
		}
		function pressesImg(data){
			window.open("<%= request.getContextPath()%>/back_end/appraisal_case_images/appraisal_case_images.do?aca_no=" + data + "&action=imagesInformation","","height=600,width=900,left=65,top=157,resizable=yes,scrollbars=yes");
		}
	</script>
<%@ include file="pages/page2.file" %>

</body>
</html>