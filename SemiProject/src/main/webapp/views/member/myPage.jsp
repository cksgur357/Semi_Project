<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<script src="/semi/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="/semi/resources/css/header.css" />
<style>
	section {
		width : 1000px;
		height: auto;
		background : snow;
		color: black;
		margin-left : auto;
		margin-right : auto;
		margin-top : 50px;
		padding : 75px;
	}
		
	#deleteBtn, #ckZip, #goMain, #updateBtn {
		background:lightslategray;
		border-radius:5px;
		width:80px;
		height:25px;
		text-align:center;
		color:white;
	}
	
	#deleteBtn:hover, #ckZip:hover, #updateBtn:hover, #goMain:hover {
		cursor:pointer;
	}
	td {
		text-align:right;
		padding: 10px;
		border-radius:50px;
	}
	#ckZip, #deleteBtn {
		background:#63717f;
		display:inline-block;
	}
	#updateBtn, #goMain {
		display:inline-block;
	}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<section>
		<br>
		<h2 align="center">회원 정보 수정</h2>
		
		<form action="/semi/update.do" method="post" id="updateForm">
		 			
			<table align="center">
				<tr>
					<td width="200px">* 아이디 </td>
					<td style="text-align: left; padding-left: 50px;"> <%= m.getUserId() %> </td>
					<td width="200px"></td>
				</tr>
				<tr>
					<td>* 변경할 비밀번호</td>
					<td><input type="password" id="userPwd" name="userPwd" required="required"></td>
					<td></td>
				</tr>
				<tr>
					<td>* 비밀번호확인</td>
					<td><input type="password" id="userPwd2" name="userPwd2"></td>
					<td><label id="pwdResult"></label></td>
				</tr>
				<tr>
					<td>* 이름</td>
					<td style="text-align: left; padding-left: 50px;"> <%= m.getUserName() %> </td>
					<td></td>
				</tr>
				<tr>
					<td>닉네임 </td>
					<td><input type="text" maxlength="5" name="nickname" required="required"></td>
					<td></td>
				</tr>
				<tr>
					<td>나이 </td>
					<td><input type="number" name="age" min="10" max="100" 
					           value="<%= m.getAge() %>" style="width:140px;">&nbsp;세
					</td>
					<td></td>
				</tr>
				<tr>
					<td>연락처 </td>
					<td>
						<input type="text" maxlength="3" name="tel1" size="2">-
						<input type="text" maxlength="4" name="tel2" size="2">-
						<input type="text" maxlength="4" name="tel3" size="2">
					</td>
					<td></td>
				</tr>
				<tr>
					<td>이메일 </td>
					<td><input type="email" name="email" value="<%= m.getEmail() %>"></td>
					<td></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><input type="text" id="zipCode" name="zipCode"></td>
					<td><div id="ckZip" onclick="addrSearch();">검색</div></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" id="address1" name="address1"></td>
					<td></td>
				</tr>
				<tr>
					<td>상세주소</td>
					<td><input type="text" id="address2" name="address2"></td>
					<td></td>
				</tr>
				
			</table>
			<br><br><br>
			<div class="btns" align="center">
				<div id="goMain" onclick="goMain();">메인으로</div> &nbsp;
				<div id="updateBtn" onclick="updateMember();">수정하기</div> &nbsp;&nbsp;
				<div id="deleteBtn" onclick="deleteMember();">탈퇴하기</div> &nbsp;&nbsp;
			</div>
		</form>
	
	</section>
	<script>
	
	// 참조 API : http://postcode.map.daum.net/guide
	function addrSearch() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $('#zipCode').val(data.zonecode); //5자리 새우편번호 사용
                
                $('#address1').val(fullAddr);

                // 커서를 상세주소 필드로 이동한다.
                $('#address2').focus();
            }
        }).open();
    };
	
    function goMain(){
    	location.href='<%= request.getContextPath() %>/views/common/mainPage.jsp';
	};
	
	function updateMember() {
		$("#updateForm").submit();
	}
	
	function deleteMember(){
		location.href = "/semi/delete.do?mid=<%= m.getUserId() %>";
	}
	

	var phoneArr = '<%= m.getPhone() %>'.split('-');

	$('input[name*="tel"]').each(function(index){
		$(this).val(phoneArr[index]);
	});
	
	var addressArr = '<%= m.getAddress() %>'.split('|');
	
	$('#zipCode').val(addressArr[0]);
	$('#address1').val(addressArr[1]);
	$('#address2').val(addressArr[2]);
	
	
    
	</script>
	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>