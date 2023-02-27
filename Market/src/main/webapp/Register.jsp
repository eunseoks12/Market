<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<form action="RegisterAction.jsp" method="post">
	<div class="form-group" style="padding-left: 40%; padding-top: 50px ">
  		<div class="form-floating mb-3 w-25">
   			<input type="text" class="form-control" id="floatingInput" placeholder="아이디" name="id">
    		<label for="floatingInput">아이디</label>
  		</div>
  		<div class="form-floating mb-3 w-25">
    		<input type="password" class="form-control" id="floatingPassword" placeholder="비밀번호" name="pw">
    		<label for="floatingPassword">비밀번호</label>
  		</div>
  		<div class="form-floating mb-3 w-25">
    		<input type="text" class="form-control" id="floatingInput" placeholder="이름" name="name">
    		<label for="floatingInput">이름</label>
  		</div>
  		<div class="form-floating mb-3 w-25">
    		<input type="tel" class="form-control" id="floatingInput" placeholder="-빼고 적어주세요" name="phone">
    		<label for="floatingInput">전화번호</label>
  		</div>
  		<div class="form-floating mb-3 w-25">
    		<input type="email" class="form-control" id="floatingInput" placeholder="이메일" name="email">
    		<label for="floatingInput">이메일</label>
  		</div>
  		<div class="form-floating mb-3 w-25">
    		<input type="text" class="form-control" id="postcode" placeholder="우편번호" name="postcode" onclick="execDaumPostcode()" readonly>
    		<label for="floatingInput">우편번호</label>
  		</div>
  		<div class="form-floating mb-3 w-25">
    		<input type="text" class="form-control" name="address" id="address" placeholder="도로명 주소" readonly>
    		<label for="floatingInput">도로명 주소</label>
  		</div>
  		<div class="form-floating mb-3 w-25">
    		<input type="text" class="form-control" id="floatingInput" placeholder="상세주소" name="detailAddress" required>
    		<label for="floatingInput">상세주소</label>
  		</div>
	</div>
    <button type="submit" class="btn btn-outline-secondary">회원가입</button>
</form>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
<script>
function execDaumPostcode() {
    daum.postcode.load(function(){
        new daum.Postcode({
            oncomplete: function(data) {
            	var roadAddr = data.roadAddress;
                var jibunAddr = data.jibunAddress;
                document.getElementById('postcode').value = data.zonecode;
                if(roadAddr !== ''){
                    document.getElementById("address").value = roadAddr;
                } 
                else if(jibunAddr !== ''){
                    document.getElementById("address").value = jibunAddr;
                }
            }
        }).open();
    });
}
</script>
</html>