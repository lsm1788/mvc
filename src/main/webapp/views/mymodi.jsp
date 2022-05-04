<%@page import="domain.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원수정</title>
  <link rel="stylesheet" type="text/css" href="views/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body class="page07">
    <div class="jointit w100 tC"><b>회원수정</b></div>
    <div class="pd16">
		<form method="post" action="" >
		<input type="hidden" name="uid" id="uid" value="${vo.uid}">
	        <div>
	            <h4>이름</h4>
	            <input type="text" id="uname" name="uname" value="${vo.uname}" maxlength="6">
	        </div>
	
	        <div>
	            <h4>학교</h4>
	            <input type="text" id="schoolname" name="schoolname" value="${vo.schoolname}">
	        </div>
	
	        <div>
	            <h4>학년/반</h4>
	            <input type="text" id="grade" name="gradeclass" value="${vo.gradeclass}">
	        </div>
	       	
	        <div>
	            <h4>노선</h4>
	            <div class="sltbox">
	                <select id="road" name="route">
	                    <option value="A노선" <c:if test="${'A노선' eq vo.route}">selected</c:if>>A노선</option>
	                    <option value="B노선" <c:if test="${'B노선' eq vo.route}">selected</c:if>>B노선</option>
	                    <option value="C노선" <c:if test="${'C노선' eq vo.route}">selected</c:if>>C노선</option>
	                </select>
	            </div>
	        </div>
	        
	        <div>
	            <h4 class="inline">탑승장소</h4> <span>(※노선을 먼저 선택해주세요)</span>
	            <div class="sltbox">
	                <select id="place" name="boardingplace">
	                    <option value="A장소" <c:if test="${'A장소' eq vo.boardingplace}">selected</c:if>>A장소</option>
	                    <option value="B장소" <c:if test="${'B장소' eq vo.boardingplace}">selected</c:if>>B장소</option>
	                    <option value="C장소" <c:if test="${'C장소' eq vo.boardingplace}">selected</c:if>>C장소</option>
	                </select>
	            </div>
	        </div>
	        
	        <div class="jw100 tC">
	            <button id="btn" type="submit">수정완료</button>
	        </div>
        </form>
    </div>

<script>
function chkName(str){
	var nameCheck = /^[가-힣]{2,6}$/;
	if(!nameCheck.test(str)){
		return false;
	}
	return true;
}

//유효성 검사
$(document).ready(function(){
	$('#btn').click(function(){
		
		if($('#uname').val() == 0){
			alert("이름을 입력하세요");
			$('#uname').focus();
			return false;
		}		
		if(!chkName($('#uname').val())){
			console.log("잘못됨"+$('#uname').val());
			alert("올바른 형식의 이름을 입력하세요");
			$('#uname').val('');
			$('#uname').focus();
			return false;
		}
		
		if($('#schoolname').val() == 0){
			alert("학교명을 입력하세요");
			$('#schoolname').focus();
			return false;
		}
		
		if($('#grade').val() == 0){
			alert("학년/반을 입력하세요");
			$('#grade').focus();
			return false;
		}
	});
//휴대폰번호 벨류값 넘겨주기	
	$('button[type=submit]').on('click', function(){

		return true;
	});

});
</script>
</body>
</html>
