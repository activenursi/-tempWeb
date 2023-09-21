<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̷¼� �ۼ�</title>
<style>
body {
	background-color: rgb(248 250 252);
}
#main_content {
	width: 1348px;
}
#content{
	width: 700px;
	height : 1500px;
	margin: 0 auto;
	padding-left: 100px;
	background-color: #FFFFFF;
	border: 1px solid rgb(203 213 225);
}
.profile_img{
	font-weight: 700;
}
.img_changeBtn {
	height: 30px;
    width: 70px;
    margin-bottom: 20px;
    background-color: rgb(52, 152, 219);
    border: 1px solid rgb(203 213 225);
    color: #FFFFFF;
    border-radius: 4px;
}
.img_deleteBtn {
	height: 30px;
    width: 70px;
    margin-bottom: 20px;
    background-color: rgb(52, 152, 219);
    border: 1px solid rgb(203 213 225);
    color: #FFFFFF;
    border-radius: 4px;
}
a {
	text-align: left;
	text-decoration: none;
	color:black;
}
.body_entire {
	margin:0 auto;
}
.input_name {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_email {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_education {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	margin-bottom: 5px;
	padding-left: 10px;
}

.input_major {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_certificate {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_career {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_meno {
	width: 540px;
	height: 30px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}
.input_date {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	margin-bottom: 5px;
	padding-left: 10px;
}
.input_addr {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	margin-bottom: 5px;
	padding-left: 10px;
}
.input_male{
    background-color: rgb(248 250 252);
    border: 1px solid lightgray;
    border-radius: 4px;
}
.preview_btn {
	float:right;
	height: 35px;
    width: 120px;
    margin-bottom: 20px;
    background-color: rgb(52, 152, 219);
    border: 1px solid rgb(203 213 225);
    color: #FFFFFF;
    border-radius: 4px;
    margin-top: 30px;
}
.small_title {
	white-space: pre-wrap;
    padding-bottom: 10px;
    font-size: 12px;
    line-height: 1.42;
    letter-spacing: normal;
    color: #666;
    margin-top: 10px;
}
</style>
</head>
<body>
<jsp:include page="./Header7.jsp"></jsp:include>
	<main id="main_content">
		<div class="body_entire">
				<div class="back_page">
					<h3><a href="/"> < ����������</a><h3>
				</div>
			<div id="content">
				<div class="profile_img">
					<h2>������ ����</h2>
					<p style="font-size: 15px; color: gray; border-bottom: 40px;">ȸ������ ��Ÿ�� �����̿���.</p>
				</div>
				<div class="profile-section">
					<form class="img_modify">
						<label> <img alt="" src="../img/user1.png" alt="������ �̹��� ����" style="width:150px; height:100px;">
						<input class="img_changeBtn" type="button" value="�ٲٱ�"> 
						<input class="img_deleteBtn" type="button" value="�����ϱ�">
						</label>
					</form>
				</div>
				<div>
					<h3 style="margin-bottom:8px;">�̸�</h3>
					<p class="small_title">�̸��� �ۼ����ּ���.</p>
					<input class="input_name" type="text" placeholder="�̸��� �Է����ּ���.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">�̸���</h3>
					<p class="small_title">�̸����� �ۼ����ּ���.</p>
					<input class="input_email" type="text" placeholder="�̸����� �Է����ּ���.">
				</div>
				<div>
					<h3 style="margin-bottom:8px;">�������</h3>
					<p class="small_title">��������� �ۼ����ּ���.</p>
					<input class="input_date" type="text"
						placeholder="������� 8�ڸ��� �Է����ּ���."> 
						<span>
						<br>
						<input class="input_male" type="radio" target="_blank;">���� 
						<input class="input_female" type="radio">����
					</span>
				</div>
				<div>
					<h3 style="margin-bottom:8px;">�ּ�</h3>
					<p class="small_title">�ּҸ� �ۼ����ּ���.</p>
					<input class="input_addr" type="text" placeholder="�ּҸ� �Է����ּ���.">
				</div>
				<div>
					<h3 style="margin-bottom:8px;">
						�з�&nbsp;&nbsp;&nbsp; <span style="font-size: 15px; color: red;">�ʼ�</span>
					</h3>
						<p class="small_title">���� �з°� ����� �ۼ����ּ���.</p>
					<input class="input_education" type="text" placeholder="�з��� �Է����ּ���."> 
					<br>
					<input class="input_major" type="text" placeholder="������ �Է����ּ���.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">���� / �ڰ���</h3>
					<p class="small_title">����� �ڰ����� �ۼ����ּ���.</p>
					<input class="input_certificate" type="text"
						placeholder="����� �ڰ����� �Է����ּ���.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">��� / ��������</h3>
					<p class="small_title">��»��� �Ǵ� ����, ����ǽ� �� �޿��� ���� ���������� �ִٸ� �ۼ����ּ���.</p>
					<input class="input_career" type="text"
						placeholder="��»��� �Ǵ� ����, ����ǽ� �� �޿��� ���� ���������� �ִٸ� �����Ӱ� �ۼ��غ�����!">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">�ڱ�Ұ�</h3>
					<textarea class="input_meno" type="text"
						style="resize:none; width:430px; height:150px; ">
					</textarea>
				</div>
				<div>
					<input class="preview_btn" type="button" value="�̸�����">
				</div>
			</div>
		</div>
	</main>
	<footer></footer>

</body>
</html>