<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html xmlns="http://www.w3.org/1999/xhtml"> 

<head> 

<title></title> 

<script type="text/javascript"> 

   

//innerHTML�� �������� <tr><td>�����ؼ� �߰��ϱ� 

// �� �����̺� ���ο� innerHTML�� �������� <tr>������Ʈ�� 

// �߰��ϴ� ������ �Ұ����ϴ�! 

function Test1() 

{ 

var table1 = document.getElementById("table1"); 

var num = document.getElementById("txtNum").value; 

var name = document.getElementById("txtName").value; 

var address = document.getElementById("txtAddress").value; 

   

//alert(table1.firstChild.innerHTML); 

var row = "<tr><td>1</td><td>ȫ�浿</td><td>�����</td></tr>"; 

var tmp = table1.firstChild.innerHTML.toString(); 

table1.firstChild.innerHTML = tmp + row; 

} 

   

   

//�±� ������Ʈ�� �����ؼ� append�޼���� �߰��ϴ� ��� 

function Test2() 

{ 

var table1 = document.getElementById("table1"); 

var num = document.getElementById("txtNum").value; 

var name = document.getElementById("txtName").value; 

var address = document.getElementById("txtAddress").value; 

   

//�±׸� �������� ���� 

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

   

   

//������Ʈ �������ϱ� 

function Test3() 

{ 

//��ư ���� 

document.body.removeChild(document.getElementById("btn1")); 

   

//���̺�ȿ� Ư�� ����� 

var table1 = document.getElementById("table1"); 

var tr = table1.firstChild.childNodes[2]; 

table1.firstChild.removeChild(tr); 

   

//���̺�ȿ� ��� ���� �����ϱ� 

for (var i = table1.firstChild.childNodes.length - 1; i >= 0; i--) 

{ 

table1.firstChild.removeChild(table1.firstChild.childNodes[i]); 

} 

} 

</script> 

</head> 

<body> 

   

<input type="button" id="btn1" value="�׽�Ʈ1" onclick="Test1();" /> 

<input type="button" value="�׽�Ʈ2" onclick="Test2();" /> 

<input type="button" value="�׽�Ʈ3" onclick="Test3();" /> 

<hr /> 

��ȣ : <input type="text" id="txtNum" /><br /> 

�̸� : <input type="text" id="txtName" /><br /> 

�ּ� : <input type="text" id="txtAddress" /><br /> 

<hr /> 

<table id="table1" border="1" width="400"> 

<tr> 

<th>��ȣ</th> 

<th>�̸�</th> 

<th>�ּ�</th> 

</tr> 

</table> 

</body> 

</html>



</body>
</html>