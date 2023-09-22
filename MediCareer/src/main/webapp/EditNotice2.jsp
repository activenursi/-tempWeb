<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���� �߰�</title>
<style>
#bodyEntire {
	width: 800px;
	height: 2040px;
	padding: 20px;
	border: 1px solid gray;
	margin: 0 auto;
	margin-top: 100px;
}

#icon_add {
	text-align: center;
}

.a1 {
	color: red; /* ���ϴ� ������ �����մϴ�. ���⼭�� ������(#FF0000)�� ����մϴ�. */
	text-decoration: none; /* ���� ���� (���û���) */
}

.a2 {
	color: red; /* ���ϴ� ������ �����մϴ�. ���⼭�� ������(#FF0000)�� ����մϴ�. */
	text-decoration: none; /* ���� ���� (���û���) */
}
.job1, .job2, .job3, .job4, .job5, .job6, .job7 {
	list-style: none;
}
#content {
	margin: 0 auto;
	justify-content: center; /* ���� �߾� ���� */
	align-items: center; /* ���� �߾� ���� */
	height: 100vh;
}

.job_posting {
	display: grid; /* �Ǵ� display: grid; */
	justify-content: center; /* ���� �߾� ���� */
	align-items: center; /* ���� �߾� ���� */
	height: 1500px; /* ȭ�� ���̿� ���� �����̳��� ���� ���� */
}

.registration {
	text-align: center;
}

.procedure-list {
	list-style: none;
}

.arrow {
	margin-top: 38px;
	color: black;
	font-weight: 1000;
	list-style: none;
}

.circle {
	width: 100px; /* ���� ������ �����մϴ�. */
	height: 100px; /* ���� ���̵� ������ �����ϰ� �����մϴ�. */
	background-color: #3498db; /* ������ �����մϴ�. */
	border-radius: 50%; /* �� ������� ����ϴ�. */
	text-align: center; /* �ؽ�Ʈ�� ��� �����մϴ�. */
	line-height: 100px; /* �ؽ�Ʈ�� ���� ��� �����մϴ�. */
	color: white; /* �ؽ�Ʈ�� ������ �����մϴ�. */
	list-style: none;
}
.my_class {
	padding: 5px;
	margin-bottom: 10px;
	width:300px;
}
.register {
	text-align: center;
	margin-left: 200px;
	width:120px;
	height: 40px;
	background-color: #3498db;
	border:none;
	border-radius: 3px;
	color:white;
	margin-top: 18px;
}
.selection_procedure{
	margin-left: 30px;
}
.small_title{
	color:gray;
	font-size: 13px;
}
</style>
</head>

<body>
	<div id="bodyEntire">
		<div id="content">
			<div id="icon_add">
				<h3>
				<span><h2>ä����� ��� ���</h2></span>
					<label> 
						<input type="radio" name="user_writer" value="user_writer" onclick="/">
							���� �Է�
					</label> 
					<label style="margin-left:60px;"> 
						<input type="radio" name="add_img" value="add_img">
							�̹��� �߰�
					</label> 
				</h3>
			</div>
			<div class="job_posting">
				<form id="jobPostingAdd" action="./jobPosting/em_addCtr.do" method="POST">
					<ul>
						<h2>ä����� ����</h2>
						<p class="small_title">����Ͻ� ���� ������ �������ּ���.</p>
						<li class="job1">
							<input type="text" name="title" class="my_class" placeholder="���� ������ �Է����ּ���.">
						</li>
					</ul>
					<ul>
						<h2>�ٹ�����</h2>
						<p class="small_title">�̷� �ٹ����� ���ؿ�</p>
						<li class="job1">
							�ٹ����� : <input type="text" name="type" class="my_class" placeholder="������ / ����� / �ܱ�">
						</li>
						<li class="job1">
							�ٹ����� : <input type="text" name="Location_name" class="my_class">
						</li>
						<li class="job1">
							�ٹ��ð� : <input type="text" name="working_hour" class="my_class">
						</li>
						
						<li class="job1">
							��&nbsp;&nbsp;&nbsp;�� : <input type="text" name="salary" class="my_class">
							<strong> - ���� �� ����</strong>
						</li>
					</ul>
					<ul>
						<h2>��������</h2>
						<li class="job1"> ��&nbsp;&nbsp;&nbsp;�� : 
							<input type="checkbox" name="gender" value="����"> ����
							<input type="checkbox" name="gender" value="����"> ����
							<input type="checkbox" name="gender" value="����"> ����
						</li>
						<label>
							<li class="job2">
								��&nbsp;&nbsp;&nbsp;�� : <input type="text" name="age" class="my_class"></li>
						</label>
						<label>
							<li class="job2">
								��&nbsp;&nbsp;&nbsp;�� : <input type="text" name="education" class="my_class"></li>
						</label>
						<label>
							<li class="job2">
								��&nbsp;&nbsp;&nbsp;�� : <input type="text" name="career" class="my_class"></li>
						</label>
					</ul>
					<ul>
						<h2>�ֿ����</h2>
						<label>
							<li class="job2">�ֿ����1 : 
							<input type="text" name="primary_duties1" class="my_class"></li>
						</label>
						<label>
							<li class="job2">�ֿ����2 : 
							<input type="text" name="primary_duties2" class="my_class"></li>
						</label>
						<label>
							<li class="job2">�ֿ����3 : 
							<input type="text" name="primary_duties3" class="my_class"></li>
						</label>
					</ul>
					<ul>
						<h2>ä������</h2>
						<label>
							<li class="job3">����ڸ� : <input type="text" name="recruiter_name" class="my_class"></li>
						</label>
						<label>
							<li class="job3">����� ��ȭ��ȣ : <input type="text" name="recruiter_phone" class="my_class"></li>
						</label>
						<label>
							<li class="job3">�̸��� : <input type="email" name="recruiter_email" class="my_class"></li>
						</label>
					</ul>
					<div class="selection_procedure">
						<h2>�������� ����</h2>
						<p class="small_title">�� ���� ���� �� ���ϴ� ���������� �������ּ���.</p>
						<label style="display: flex; margin-bottom: 10px;">
							<input type="radio" name="three_circle" class="procedure-list" name="recruiter_process">
								<li class="circle">���� ����</li>
								<li class="arrow">&nbsp;��&nbsp;</li>
								<li class="circle">1�� ����</li>
								<li class="arrow">&nbsp;��&nbsp;</li>
								<li class="circle">�հ� ���</li>
						</label>
						<label style="display: flex;">
							<input type="radio" name="four_circle" class="procedure-list" style="display: flex;">
								<li class="circle">���� ����</li>
								<li class="arrow">&nbsp;��&nbsp;</li>
								<li class="circle">1�� ����</li>
								<li class="arrow">&nbsp;��&nbsp;</li>
								<li class="circle">2�� ����</li>
								<li class="arrow">&nbsp;��&nbsp;</li>
								<li class="circle">�հ� ���</li>
						</label>
					</div>
					<ul>
						<h2>�����Ļ�</h2>
						<label>
							<li class="job5">
								<input type="text" name="employee_benefit" class="my_class" placeholder="�����Ļ��� �Է����ּ���.">
							</li>
						</label>
						</ul>
					<ul>
						<h2>�ٹ���ġ</h2>
						<li class="job6">#��ġ</li>
						<br>
						<li class="job6" 
							style="border:1px solid; width:400px; height: 200px; background-color: green;">#����</li>
						<br>
						<li class="job6">��&nbsp;&nbsp;&nbsp;�� : 
							<input type="text" class="my_class" name="address"
								placeholder="��) ��� ���ֽ� ȣ���伺3�� 3" style="width:300px;">
						</li>
					</ul>
					<ul>
						<h2>���� �Ⱓ</h2>
						<li class="job7">�Ⱓ : <input type="text" class="my_class" 
							placeholder="��) 2023.11.22~2024.12.25"></li>
					</ul>
						<label><input class="register" name="application_period" type="submit" value="����ϱ�"></label>
				</form>
			</div>
		</div>
		<footer> </footer>
	</div>
</body>
</html>