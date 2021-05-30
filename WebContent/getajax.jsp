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
<button onclick="getajax()">클릭</button>

<script>
	
	function getajax(){
		// GET으로 key=value 데이터를 전송하고 응답을 text/plain으로 받을 예정
		// $.ajax("주소").done();
		
		$.ajax({
			// type: "GET",  // 기본 전략이 GET
			url: "http://localhost:8080/ajax1?username=hjin&password=1234",
			//data: get은 전송할 http의 body가 없음. 그래서 data필드가 필요없음.
			//contentType: 전송한 data가 없으니까 그 data를 설명할 필드가 없음.
			dataType: "text"
		})
		.done(function(result){
			alert(result);
		}) // ajax 통신 완료후에 정상이면 done이 가지고있는 함수 호출
		.fail(function(error){
			
		});  // ajax 통신 완료후에 비정상이면 fail이 가지고있는 함수 호출
		
	}

	
</script>

</body>
</html>