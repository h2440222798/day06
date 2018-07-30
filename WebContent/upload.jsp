<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
文件上传方式必须是post方式 enctype 也不能变
<form action="upload.do" method="post" enctype="multipart/form-data" id = "login" name="login"> 
	<input type="hidden" id = "hi" name = "hi" value="hihi" >
	输入文件类型：<input type="checkbox" name="value" value="picture">图片
	<input type="checkbox" name="value" value="txt">文本
	<input type="checkbox" name="value" value="exe">可执行文件
	<input type="checkbox" name="value" value="video">视频<br>
	
   <input type="file" id = "demo" name="upfile" onchange="add()"><br/>
<!--    <input type="button" name="submit" value="submit" onclick="getFormInfo();"> -->
   <input type="submit" value = "submit" >
</form>
   
<!--         <input type="file" id="demo" onchange="add()"/> -->
 
<script type="text/javascript">
             function add(){ 
                  var file = document.getElementById("demo").files[0];
                 console.log(file); 
                  //alert(file['name']);
                  var ss = file['name'];
                  //alert(typeof ss);
                  var s1 = ss.split(".");
                  var s2 = s1[1];
                  alert(typeof s2);
                  alert(s2);
                  var ele = document.getElementById("hi");
                  ele.setAttribute("value", s2);
             }
</script>
         
<script type="text/javascript">
		//获取指定form中的所有的<input>对象  
		function getElements(formId) {
			var form = document.getElementById(formId);
			var elements = new Array();
			var tagElements = form.getElementsByTagName('input');
			for (var j = 0; j < tagElements.length; j++) {
				elements.push(tagElements[j]);

			}
			return elements;
		}

		//获取单个input中的【name,value】数组 
		function inputSelector(element) {
			if (element.checked)
				return [ element.name, element.value ];
		}

		function input(element) {
			switch (element.type.toLowerCase()) {
			case 'submit':
			case 'hidden':
			case 'password':
			case 'text':
				return [ element.name, element.value ];
			case 'checkbox':
			case 'radio':
				return inputSelector(element);
			case 'file':
				return [ element.name, element.value ];
			}
			return false;
		}

		//组合URL 
		function serializeElement(element) {
			var method = element.tagName.toLowerCase();
			
			var parameter = input(element);

			if (parameter) {
				var key = encodeURIComponent(parameter[0]);
				if (key.length == 0)
					return;
				
				if (parameter[1].constructor != Array)
					parameter[1] = [ parameter[1] ];
				
				var values = parameter[1];
				var results = [];
				for (var i = 0; i < values.length; i++) {
					results.push(key + '=' + encodeURIComponent(values[i]));
				}
				return results.join('&');
			}
		}

		//调用方法   
		function serializeForm(formId) {
			//得到form的Id
			var elements = getElements(formId);
			//创建一个array数组
			var queryComponents = new Array();
			
			for (var i = 0; i < elements.length; i++) {
				var queryComponent = serializeElement(elements[i]);
				if (queryComponent)
					queryComponents.push(queryComponent);
			}
			
			return queryComponents.join('&');
		}
		function getFormInfo(){ 
			  var params = serializeForm('login'); 
			  alert(params); 
			}
	</script>
</body>
</html>