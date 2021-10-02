<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.appraisal_case.model.*"%>
<%@page import="java.sql.Timestamp"%>

<%
	Appraisal_CaseVO appraisalCaseVO = (Appraisal_CaseVO) request.getAttribute("appraisalCaseVO");
%>
<!DOCTYPE html>
<html>
<head>
<head>
<!--******************* Start Include CSS File ******************* -->
<%@ include file="../front_include_page/CSS_link.jsp"%>
<!--******************* End Include CSS File ******************* -->
<title>YSM3C - 二手租賃商城</title>
<link rel="icon" type="image/png"
	href="../front_CSS_JS/assets/img/favicon.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>

	<!--******************* Start Top Head Area ******************* -->
	<%@ include file="../front_include_page/Top_head.jsp"%>
	<!--******************* End Top Head Area ******************* -->

	<!--*******************	Start Navbar Area ******************* -->
	<%@ include file="../front_include_page/navbar.jsp"%>
	<!--******************* End Navbar Area ******************* -->

	<!-- ************************下面開始塞你自己的頁面資訊************************ -->
	<!-- ************************下面開始塞你自己的頁面資訊************************ -->
<section class="contact-area ptb-50">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-md-12">
		<div class="contact-information">
			<h3>XXXX</h3>
				lorm
		</div>
	</div>
			<div class="col-lg-7 col-md-12">
				<div class="contact-form">
					<div class="tile">
						<div class="container px-5 my-5">
							<h3>請填寫估價表單</h3>
							<h5>打<font color=red><b>*</b></font>為必填</h5>
<c:if test="${not empty errorMsgs}">
	<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
			<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
</c:if>
	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back_end/appraisal_case/appraisal_case.do" id="contactForm" data-sb-form-api-token="API_TOKEN" enctype="multipart/form-data">
		<div class="mb-3">
			<label class="form-label" for="估價商品名稱">估價商品名稱<font color=red><b>*</b></font></label> 
			<input class="form-control" id="估價商品名稱" type="text" placeholder="估價商品名稱" data-sb-validations="required" />
			<div class="invalid-feedback" data-sb-feedback="估價商品名稱:required">請輸入估價商品名稱</div>
		</div>
<jsp:useBean id="appraisalClassSvc" scope="page" class="com.appraisal_class.model.Appraisal_ClassService" />
        <div class="mb-3">
            <label class="form-label" for="估價類別">估價類別</label>
            <select class="form-select" id="估價類別" aria-label="估價類別" name="acl_no">
               <c:forEach var="appraisalClassVO" items="${appraisalClassSvc.all}">
					<option value="${appraisalClassVO.acl_no }"${(appraisalCaseVO.acl_no==appraisalClassVO.acl_no)?'selected':''}>${appraisalClassVO.acl_id }
				</c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label" for="估價商品內容規格">估價商品內容(規格)</label>
            <textarea class="form-control" id="估價商品內容規格"  placeholder="估價商品內容(規格)" style="height: 10rem;" data-sb-validations=""></textarea>
        </div>
		<div class="mb-3">
			<label for="formFile" class="form-label">上傳估價照片,估價會更準確哦~</label>
			<input class="form-control" type="file" id="formFile" name="aci_img1" accept="image/*" onchange="loadFile1(event)"><img id="imgDisplay1" width="120" height="120">
			<input class="form-control" type="file" id="formFile" name="aci_img2" accept="image/*" onchange="loadFile2(event)"><img id="imgDisplay2" width="120" height="120">
			<input class="form-control" type="file" id="formFile" name="aci_img3" accept="image/*" onchange="loadFile3(event)"><img id="imgDisplay3" width="120" height="120">
		</div>
		<div class="mb-3">
			<label class="form-label" for="付款方式">付款方式</label>
			<select class="form-select" id="付款方式" aria-label="付款方式">
				<option value="現金">現金</option>
				<option value="轉帳">轉帳</option>
			</select>
		</div>
		<div class="mb-3">
			<label class="form-label" for="運送方式">運送方式</label> 
			<select class="form-select" id="運送方式" aria-label="運送方式">
				<option value="自取、親送">自取、親送</option>
				<option value="宅配">宅配</option>
			</select>
		</div>
		<div class="mb-3">
			<label class="form-label" for="配送地址">配送地址<font color=red><b>*</b></font></label> 
			<input class="form-control" id="配送地址" type="text" placeholder="配送地址" data-sb-validations="required" />
			<div class="invalid-feedback" data-sb-feedback="配送地址:required">請輸入配送地址,事後如果不同意估價金額可以幫忙寄回</div>
		</div>
		<div class="mb-3">
            <label class="form-label d-block"></label>
            <div class="form-check form-check-inline">
                <input class="form-check-input" id="同意公開注意事項" type="checkbox" name="" data-sb-validations="required" />
                <label class="form-check-label" for="同意公開注意事項">同意公開注意事項</label>
            </div>
            <div class="invalid-feedback" data-sb-feedback=":required">請詳閱公開注意事項</div>
        </div>
		<div class="d-none" id="submitSuccessMessage">
			<div class="text-center mb-3">
				<div class="fw-bolder">您新增了一筆估價案件~</div>
					<p>到會員中心查看新增的估價案件</p>
					<a href="https://startbootstrap.com/solution/contact-forms">查看估價案件</a>
			</div>
		</div>
		<div class="d-none" id="submitErrorMessage">
			<div class="text-center text-danger mb-3">Error sending message!</div>
				</div>
					<div class="d-grid">
						<input type="hidden" name="action" value="insert">
						<button type="submit" class="btn btn-primary btn-lg disabled" id="submitButton">開始估價</button>
					</div>
				</FORM>
			</div>
		</div>
	</div>
</div>

</div>
</div>
</section>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

	<!--******************* Start Footer Area ******************* -->
	<%@ include file="../front_include_page/footer.jsp"%>
	<!--******************* End Footer Area ******************* -->

	<!--******************* Start Go Top Area ******************* -->
	<%@ include file="../front_include_page/startGoTop.jsp"%>
	<!--******************* End Go Top Area ******************* -->

	<!--******************* Start Include JS File ******************* -->
	<%@ include file="../front_include_page/JavaScript_Include.jsp"%>
	<!--******************* End Include JS File ******************* -->
</body>

<script>
	var loadFile1 = function(event) {
		var output = document.getElementById('imgDisplay1');
		output.src = URL.createObjectURL(event.target.files[0]);
		output.onload = function() {
			URL.revokeObjectURL(output.src) // free memory
		}
	};
	var loadFile2 = function(event) {
		var output = document.getElementById('imgDisplay2');
		output.src = URL.createObjectURL(event.target.files[0]);
		output.onload = function() {
			URL.revokeObjectURL(output.src) // free memory
		}
	};
	var loadFile3 = function(event) {
		var output = document.getElementById('imgDisplay3');
		output.src = URL.createObjectURL(event.target.files[0]);
		output.onload = function() {
			URL.revokeObjectURL(output.src) // free memory
		}
	};
</script>
</html>