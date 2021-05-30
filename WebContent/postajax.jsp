<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<body>
<button onclick="postajax()">클릭</button>

<script>
	
	function postajax(){
		// POST로 key=value 데이터를 전송하고 응답을 json으로 받을 예정
		// $.ajax("주소").done();
		
		$.ajax({
			type: "POST", 
			url: "http://localhost:8080/ajax1",
			data: "username=hjin&password=1234", 
			contentType: "application/x-www-form-urlencoded",
			// dataType: "json"
		})
		.done(function(result){
			console.log(result);
			console.log(result.username);
		}) // ajax 통신 완료후에 정상이면 done이 가지고있는 함수 호출
		.fail(function(error){
			
		});  // ajax 통신 완료후에 비정상이면 fail이 가지고있는 함수 호출
		
	}

	
</script>

</body>
</html>