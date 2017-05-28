<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html xmlns="http://www.w3.org/1999/xhtml"> 

<head> 

<title></title> 

<script type="text/javascript"> 

   

//innerHTML로 동적으로 <tr><td>생성해서 추가하기 

// ㄴ ★테이블 내부에 innerHTML로 동적으로 <tr>엘리먼트를 

// 추가하는 동작은 불가능하다! 

function Test1() 

{ 

var table1 = document.getElementById("table1"); 

var num = document.getElementById("txtNum").value; 

var name = document.getElementById("txtName").value; 

var address = document.getElementById("txtAddress").value; 

   

//alert(table1.firstChild.innerHTML); 

var row = "<tr><td>1</td><td>홍길동</td><td>서울시</td></tr>"; 

var tmp = table1.firstChild.innerHTML.toString(); 

table1.firstChild.innerHTML = tmp + row; 

} 

   

   

//태그 엘리먼트를 생성해서 append메서드로 추가하는 방법 

function Test2() 

{ 

var table1 = document.getElementById("table1"); 

var num = document.getElementById("txtNum").value; 

var name = document.getElementById("txtName").value; 

var address = document.getElementById("txtAddress").value; 

   

//태그를 동적으로 생성 

var tr = document.createElement("tr"); 

var td1 = document.createElement("td"); 

var td2 = document.createElement("td"); 

var td3 = document.createElement("td"); 

   

td1.innerText = num; 

td2.innerText = name; 

td3.innerText = address; 

   

tr.appendChild(td1); //<tr><td></td></tr> 

tr.appendChild(td2); 

tr.appendChild(td3); 

   

table1.firstChild.appendChild(tr); 

} 

   

   

//엘리먼트 노드삭제하기 

function Test3() 

{ 

//버튼 삭제 

document.body.removeChild(document.getElementById("btn1")); 

   

//테이블안에 특정 행삭제 

var table1 = document.getElementById("table1"); 

var tr = table1.firstChild.childNodes[2]; 

table1.firstChild.removeChild(tr); 

   

//테이블안에 모든 행을 삭제하기 

for (var i = table1.firstChild.childNodes.length - 1; i >= 0; i--) 

{ 

table1.firstChild.removeChild(table1.firstChild.childNodes[i]); 

} 

} 

</script> 

</head> 

<body> 

   

<input type="button" id="btn1" value="테스트1" onclick="Test1();" /> 

<input type="button" value="테스트2" onclick="Test2();" /> 

<input type="button" value="테스트3" onclick="Test3();" /> 

<hr /> 

번호 : <input type="text" id="txtNum" /><br /> 

이름 : <input type="text" id="txtName" /><br /> 

주소 : <input type="text" id="txtAddress" /><br /> 

<hr /> 

<table id="table1" border="1" width="400"> 

<tr> 

<th>번호</th> 

<th>이름</th> 

<th>주소</th> 

</tr> 

</table> 

</body> 

</html>



</body>
</html>