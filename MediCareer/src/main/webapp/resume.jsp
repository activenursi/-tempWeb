<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̷¼� �ۼ�</title>
<style>
#main_content {
	width: 1348px;
}
#content{
	margin-left:600px;
	margin-top:70px;
	width: 1000px;
	align-items: center;
	
}
.profile_img{
	font-weight: 700;
}
.img_modify{
	margin-left: 80px;
}
a{
	text-align: left;
	text-decoration: none;
	color:black;
}
.body_entire{
	margin:0 auto;
}
.input_name {
	width: 200px;
	height: 30px;
}

.input_email {
	width: 200px;
	height: 30px;
}

.input_education {
	width: 200px;
	height: 30px;
}

.input_major {
	width: 200px;
	height: 30px;
}

.input_certificate {
	width: 430px;
	height: 30px;
}

.input_career {
	width: 430px;
	height: 30px;
}

.input_meno {
	width: 200px;
	height: 30px;
	
}
.input_date {
	width: 200px;
	height: 30px;
}
.input_male{
    position: absolute;
    clip: rect(0 0 0 0);
    width: 1px;
    height: 1px;
    margin: -1px;
    overflow: hidden;
    border:1px solid;
}
</style>
</head>
<body>
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
						<label> <img alt="" src="" alt="������ �̹��� ����"> �̹��� <input
							type="button" value="�ٲٱ�"> <input type="button"
							value="�����ϱ�">
						</label>
					</form>
				</div>
				<div>
					<h3 style="margin-bottom:8px;">�̸�</h3>
					<input class="input_name" type="text" placeholder="�̸��� �Է����ּ���.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">�̸���</h3>
					<input class="input_email" type="text" placeholder="�̸����� �Է����ּ���.">
				</div>
				<div>
					<h3 style="margin-bottom:8px;">�������</h3>
					<input class="input_date" type="text"
						placeholder="������� 8�ڸ��� �Է����ּ���."> 
						<span>
						<input class="input_male" type="radio" target="_blank;">���� 
						<input class="input_female" type="radio">����
					</span>
				</div>
				<div>
					<h3 style="margin-bottom:8px;">
						�з�&nbsp;&nbsp;&nbsp; <span style="font-size: 15px; color: red;">�ʼ�</span>
					</h3>

					<input class="input_education" type="text"
						placeholder="�з��� �Է����ּ���."> <input class="input_major"
						type="text" placeholder="������ �Է����ּ���.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">���� / �ڰ���</h3>
					<input class="input_certificate" type="text"
						placeholder="����� �ڰ����� �Է����ּ���.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">��� / ��������</h3>
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
					<h3 style="margin-bottom:8px;">��� / ��������</h3>
					<input class="input_preview" type="button" value="�̸�����">
				</div>
			</div>
		</div>
	</main>
	<footer></footer>

</body>
</html>