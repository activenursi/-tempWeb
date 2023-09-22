<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ������ ������(����)</title>
	<style type="text/css">
	body {
		background-color: rgb(248 250 252);
	}
	.body_entire{
		background-color:#FFFFFF;
		border:1px solid rgb(203 213 225);
		width:700px;
		height: 710px;
		margin: 0 auto;
		margin-top: 20px;
	}
	.profile_wrap{
		background-color:#FFFFFF;
		border:1px solid rgb(203 213 225);
		display: flex;
		width:500px;
		height: 120px;
		margin:0 auto;
		margin-bottom: 35px;
		margin-top: 10px;
	}
	.user_profileImg{
		flex:1;
		border-right: 1px solid rgb(203 213 225);
		margin-left: 40px;
	}
	.user_profileInfo{
		flex:2;
		padding: 20px;
	}
	.email_change{
		padding-left:120px;
		margin-bottom: 50px;
	}
	.input_email{
		padding:10px;
		width:300px;
		margin-bottom: 20px;
		border:1px solid lightgray;
		border-radius: 4px;
		background-color: rgb(248 250 252); /* ���� ȸ��*/
	}
	.change_wrap{
		height: 35px;
		width:120px;
		margin-bottom: 20px;
		background-color: rgb(52, 152, 219); /* ���� �Ķ���*/
		border:1px solid rgb(203 213 225);
		color:#FFFFFF;
		border-radius: 4px;
	}
	.user_mail {
		margin-bottom: 10px;
		margin-top: 0px;
	}
	.user_ninkname {
		margin-bottom: 10px;
		margin-top: 0px;
	}
	.user_password {
		margin-bottom: 10px;
		margin-top: 0px;
	}
	.user_addr {
		margin-bottom: 10px;
		margin-top: 0px;
	}
	.small_title {
		font-size:12px;
		color:#666;
	}
	.withdrawal{
		height: 35px;
		width:120px;
		margin-bottom: 20px;
		background-color: rgb(52, 152, 219); /* ���� �Ķ���*/
		border:1px solid rgb(203 213 225);
		color:#FFFFFF;
		border-radius: 4px;
	}
	</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<div id="content_wrap">
		<div class="body_entire"> 
			<div class="profile_wrap">
				<div class="user_profileImg">
					<img src="../img/user1.png" alt="������ ����" style="width:100px; height:80px;">
					<label for="editing"></label>
					<input type="button" id="editing" name="editing" value="������ ����">
				</div>
				<div class="user_profileInfo">	
					<label for="name">�̽���</label>
					<br>
					<label for="email">nursi@naver.com</label>
				</div>
			</div>
				<form class="email_change">
				<div>
					<p class="user_mail">�̸���<span style="color:red">*</span></p>
					<input class="input_email" type="text" id="account" name="account" placeholder="nursi@naver.com">
					<input class="change_wrap" type="button" id="setting" name="setting" value="���� ����">
					<br>
				</div>
				<div>
					<p class="user_ninkname">�г���<span style="color:red">*</span></p>
					<label for="account"></label>
					<input class="input_email" type="text" id="account" name="account" placeholder="�浿��">
					<label for="setting"></label>
					<input class="change_wrap" type="button" id="setting" name="setting" value="�г��� ����">
					<br>
				</div>
				<div>
					<p class="user_password">��й�ȣ<span style="color:red">*</span></p>
					<label for="account"></label>
					<input class="input_email" type="text" id="account" name="account" placeholder="********">
					<label for="setting"></label>
					<input class="change_wrap" type="button" id="setting" name="setting" value="��й�ȣ �缳��">
					<br>
				</div>
				<div>
					<p class="user_addr">���� ���� ��ȣ<span style="color:red">*</span></p>
					<p class="small_title">�� ������ �����ϰ� ��ȣ�ϱ� ���� ������ ������ �� �ֽ��ϴ�.</p>
					<label for="setting"></label>
					<input class="withdrawal" type="button" id="setting" name="setting" value="ȸ�� Ż��">
				</div>
				</form>
			</div>
		</div>
</body>
</html>