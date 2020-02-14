<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8" />
<title>青鸟租房 - 用户登录</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/function.js"></script>
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
</head>
<script type="text/javascript">
	function login(){
		
		var username=$("#User_login_action_username").val();
		var password =$("#User_login_action_password").val();
		
		$.post("login.do",{
			username : username,
			password : password},
		function(result){
				console.info(result);
			if(result.code==1){
				alert(result.msg);
			}else if(result.code==2){
				for(var i=0;i<result.data.length;i++){
					if(result.data[i].field=='username'){
						$("#pwd").html("内容");
						$("#pwd").text("用户名"+result.data[i].defaultMessage);
					}else if(result.data[i].field=='password'){
					$("#name").text("密码"+result.data[i].defaultMessage);
					alert(result.data[i].defaultMessage)
				}
			      }
			}else if(result.code==0){
				var fm=document.getElementById("User_login_action");
				fm.submit();
			}	
		}
		)
	}

</script>
<body>
	<div id="header" class="wrap">
		<div id="logo">
			<img src="images/logo.gif" />
		</div>
	</div>
	<div id="regLogin" class="wrap">
		<div class="dialog">
			<div class="box">
				<h4>用户登录</h4>
				<form id="User_login_action" name="User_login_action"  action="tolist" method="post">
					<div class="infos">
						<table class="field">
							<tr>
								<td  colspan="2" style="text-align:center; color:red">
									<label id="pwd"></label><br>
									<label id="name"></label>
								</td>
								
							</tr>
							<tr>
								<td class="field" id="username">用 户 名：</td>
					
								<td>
									 <input type="text" name="username" value="" id="User_login_action_username" class="text" required="true"/>
								</td>
							</tr>
							<tr>
								<td class="field" id="111">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
								
								<td>
									<input type="password" name="password" id="User_login_action_password" class="text" required="true"/>
								</td>
							</tr>
						<!-- <tr>
							<td class="field">验 证 码：</td>
							<td><input type="text" class="text verycode" name="veryCode" /></td>
						</tr> -->
						</table>
						<div class="buttons">
							<input type="button" id="User_login_action_0" value="立即登录" onclick="login()"/>
							<input type='button' value='注册' onclick='document.location="page/register.jsp"' />
						</div>
					</div>
				</form>




			</div>
		</div>
	</div>
	<div id="footer" class="wrap">
		<dl>
			<dt>青鸟租房 &copy; 2015 源辰信息科技有限公司  湘ICP证1000001号</dt>
			<dd>关于我们 · 联系方式 · 意见反馈 · 帮助中心</dd>
		</dl>
	</div>
</body>
</html>


