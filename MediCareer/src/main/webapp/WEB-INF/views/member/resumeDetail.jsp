<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̷¼� �̸�����</title>
<style>
#main_content {
	width: 1348px;
}

#content {
	margin-top: 70px;
	width: 700px;
	height : 900px;
	margin: 0 auto;
	margin-left: 600px;
}
.profile_img {
	font-weight: 700;
}
a {
	text-align: left;
	text-decoration: none;
	color: black;
}

.body_entire {
	margin: 0 auto;
}
.input_male {
	position: absolute;
	clip: rect(0, 0, 0, 0);
	width: 1px;
	height: 1px;
	margin: -1px;
	overflow: hidden;
	border: 1px solid;
}
.input_female{
	position: absolute;
	clip: rect(0, 0, 0, 0);
	width: 1px;
	height: 1px;
	margin: -1px;
	overflow: hidden;
	border: 1px solid;
}
.input_prev_name{
	border:none;
	padding: 10px;
	width: 600px;
}
.input_prev_email {
	border:none;
	padding: 10px;
	width: 600px;
}
.input_prev_education{
	border:none;
	padding: 10px;
	v
}
.input_prev_major{
	border:none;
	padding: 10px;
	v
}
.input_prev_certificate{
	border:none;
	padding: 10px;
	width: 600px;
}
.input_prev_career{
	border:none;
	padding: 10px;
	width: 600px;
}
.input_prev_myself{
	border:1px solid lightgray;
	padding: 10px;
	width: 600px;
	height: 150px;
	margin-bottom: 30px;
}
.img_user{
	width:200px;
	height: 100px;
}
.keyword_wrap{
	border-bottom: 1px solid gray;
}
.small_title {
	white-space: pre-wrap;
    padding: 10px;
    background-color: #f3f9fe;
    font-size: 12px;
    line-height: 1.42;
    letter-spacing: normal;
    color: #666;
    margin-top: 10px;
}
.preview_close {
	height: 35px;
    width: 120px;
    margin-bottom: 20px;
    background-color: rgb(52, 152, 219);
    border: 1px solid rgb(203 213 225);
    color: #FFFFFF;
    border-radius: 4px;
    float:right;
}
</style>
</head>
<body>
	<main id="main_content">
		<div class="body_entire">
			<div id="content">
				<form>
					<div class="profile_img">
						<h2>�̷¼� �̸�����</h2>
						<p style="font-size: 15px; color: gray; border-bottom: 40px;">ȸ�翡�Դ�
						�̷��� ������.</p>
					</div>
					<div class="profile-section">
						<form class="img_modify">
							<label><img name="img_modify"class="img_user" src="../img/user1.png" alt="������ �̹��� ����"></label>
						</form>
					</div>
					<div>
						<label for="input_name"><h3 class="keyword_wrap">�̸�</h3></label>
						<input class="input_prev_name" id="input_name" type="text" value="ȫ�浿">
					</div>
					<div>
						<label for="input_email"><h3 class="keyword_wrap">�̸���</h3></label>
						<p class="small_title">�̸����� �ۼ����ּ���.</p>
						<br>
						<input class="input_prev_email" id="input_name" type="text" value="nursi@naver.com">
					</div>
					<div>
						<label for="input_education"><h3 class="keyword_wrap">�з�</h3></label>
						<p class="small_title">���� �з°� ����� �ۼ����ּ���.</p>
						<br>
						<input class="input_prev_education" id="input_education" type="text" value="���ϴ��б�"> 
						<br>
						<input class="input_prev_major" id="input_education" type="text" value="��ȣ�а�">
					</div>
	
					<div>
						<label for="input_certificate"><h3 class="keyword_wrap">���� / �ڰ���</h3></label>
						<p class="small_title">����� �ڰ����� �ۼ����ּ���.</p>
						<br>
						<input class="input_prev_certificate" id="input_certificate" type="text"
							value="����� �ڰ����� �ۼ����ּ���.">
					</div>
	
					<div>
						<label for="input_career"><h3 class="keyword_wrap">��� / ��������</h3></label>
						<p class="small_title">��»��� �Ǵ� ����, ����ǽ� �� �޿��� ���� ���������� �ִٸ� �����Ӱ� �ۼ��غ�����!</p>
						<br>
						<input class="input_prev_career" type="text" id="input_career"
							value="��»��� �Ǵ� ����, ����ǽ� �� �޿��� ���� ���������� �ִٸ� �����Ӱ� �ۼ��غ�����!">
					</div>
	
					<div>
						<h3 class="keyword_wrap" style="margin-bottom: 8px;">�ڱ�Ұ�</h3>
						<p class="small_title">������ �ڱ�Ұ��� �ۼ��غ�����.</p>
						<br>
						<textarea class="input_prev_myself" id="keyword_wrap" placeholder="������ �ڱ�Ұ� �ۼ��غ�����!"
							style="resize: none;">
						</textarea>
					</div>
					<div>
						<input class="preview_close" type="button" value="�ݱ�">
					</div>
				</form>
			</div>
		</div>
	</main>
	<footer></footer>

</body>
</html>