<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>공고 수정 추가</title>
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
	color: red; /* 원하는 색상을 지정합니다. 여기서는 빨간색(#FF0000)을 사용합니다. */
	text-decoration: none; /* 밑줄 제거 (선택사항) */
}

.a2 {
	color: red; /* 원하는 색상을 지정합니다. 여기서는 빨간색(#FF0000)을 사용합니다. */
	text-decoration: none; /* 밑줄 제거 (선택사항) */
}
.job1 {
	list-style: none;
}

.job2 {
	list-style: none;
}

.job3 {
	list-style: none;
}

.job4 {
	list-style: none;
}

.job5 {
	list-style: none;
}

.job6 {
	list-style: none;
}

.job7 {
	list-style: none;
}
#content {
	margin: 0 auto;
	justify-content: center; /* 가로 중앙 정렬 */
	align-items: center; /* 세로 중앙 정렬 */
	height: 100vh;
}

.job_posting {
	display: grid; /* 또는 display: grid; */
	justify-content: center; /* 가로 중앙 정렬 */
	align-items: center; /* 세로 중앙 정렬 */
	height: 1500px; /* 화면 높이에 맞춰 컨테이너의 높이 설정 */
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
	width: 100px; /* 원의 지름을 설정합니다. */
	height: 100px; /* 원의 높이도 지름과 동일하게 설정합니다. */
	background-color: #3498db; /* 배경색을 설정합니다. */
	border-radius: 50%; /* 원 모양으로 만듭니다. */
	text-align: center; /* 텍스트를 가운데 정렬합니다. */
	line-height: 100px; /* 텍스트를 수직 가운데 정렬합니다. */
	color: white; /* 텍스트의 색상을 설정합니다. */
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
				<span><h2>채용공고 등록 방식</h2></span>
					<label> 
						<input type="radio" name="user_writer" value="user_writer" onclick="/">
							직접 입력
					</label> 
					<label style="margin-left:60px;"> 
						<input type="radio" name="add_img" value="add_img">
							이미지 추가
					</label> 
				</h3>
			</div>
			<div class="job_posting">
				<form id="jobPostingAdd" action="./jobPosting/em_addCtr.do" method="POST">
					<ul>
						<h2>채용공고 제목</h2>
						<p class="small_title">등록하실 공고 제목을 기입해주세요.</p>
						<li class="job1">
							<input type="text" name="title" class="my_class" placeholder="공고 제목을 입력해주세요.">
						</li>
					</ul>
					<ul>
						<h2>근무조건</h2>
						<p class="small_title">이런 근무에서 일해요</p>
						<li class="job1">
							근무형태 : <input type="text" name="type" class="my_class" placeholder="정규직 / 계약직 / 단기">
						</li>
						<li class="job1">
							근무지역 : <input type="text" name="Location_name" class="my_class">
						</li>
						<li class="job1">
							근무시간 : <input type="text" name="working_hour" class="my_class">
						</li>
						
						<li class="job1">
							급&nbsp;&nbsp;&nbsp;여 : <input type="text" name="salary" class="my_class">
							<strong> - 면접 후 결정</strong>
						</li>
					</ul>
					<ul>
						<h2>지원조건</h2>
						<p class="small_title">우대조건</p>
						<li class="job1"> 성&nbsp;&nbsp;&nbsp;별 : 
							<input type="checkbox" name="gender" value="남자">
							<input type="checkbox" name="gender" value="여자">
							<input type="checkbox" name="gender" value="무관">
						</li>
						<label>
							<li class="job2">
								연&nbsp;&nbsp;&nbsp;령 : <input type="text" name="age" class="my_class"></li>
						</label>
						<label>
							<li class="job2">
								학&nbsp;&nbsp;&nbsp;력 : <input type="text" name="education" class="my_class"></li>
						</label>
						<label>
							<li class="job2">
								경&nbsp;&nbsp;&nbsp;력 : <input type="text" name="career" class="my_class"></li>
						</label>
					</ul>
					<ul>
						<h2>주요업무</h2>
						<label>
							<li class="job2">주요업무1 : 
							<input type="text" name="primary_duties1" class="my_class"></li>
						</label>
						<label>
							<li class="job2">주요업무2 : 
							<input type="text" name="primary_duties2" class="my_class"></li>
						</label>
						<label>
							<li class="job2">주요업무3 : 
							<input type="text" name="primary_duties3" class="my_class"></li>
						</label>
					</ul>
					<ul>
						<h2>채용담당자</h2>
						<label>
							<li class="job3">담당자명 : <input type="text" name="recruiter_name" class="my_class"></li>
						</label>
						<label>
							<li class="job3">담당자 전화번호 : <input type="text" name="recruiter_phone" class="my_class"></li>
						</label>
						<label>
							<li class="job3">이메일 : <input type="email" name="recruiter_email" class="my_class"></li>
						</label>
					</ul>
					<div class="selection_procedure">
						<h2>전형절차 선택</h2>
						<p class="small_title">두 가지 유형 중 원하는 전형절차를 선택해주세요.</p>
						<label style="display: flex; margin-bottom: 10px;">
							<input type="radio" name="three_circle" class="procedure-list" name="recruiter_process">
								<li class="circle">서류 제출</li>
								<li class="arrow">&nbsp;〉&nbsp;</li>
								<li class="circle">1차 면접</li>
								<li class="arrow">&nbsp;〉&nbsp;</li>
								<li class="circle">합격 결과</li>
						</label>
						<label style="display: flex;">
							<input type="radio" name="four_circle" class="procedure-list" style="display: flex;">
								<li class="circle">서류 제출</li>
								<li class="arrow">&nbsp;〉&nbsp;</li>
								<li class="circle">1차 면접</li>
								<li class="arrow">&nbsp;〉&nbsp;</li>
								<li class="circle">2차 면접</li>
								<li class="arrow">&nbsp;〉&nbsp;</li>
								<li class="circle">합격 결과</li>
						</label>
					</div>
					<ul>
						<h2>복리후생</h2>
						<label>
							<li class="job5">
								<input type="text" name="employee_benefit" class="my_class" placeholder="복리후생을 입력해주세요.">
							</li>
						</label>
						</ul>
					<ul>
						<h2>근무위치</h2>
						<li class="job6">#위치</li>
						<br>
						<li class="job6" 
							style="border:1px solid; width:400px; height: 200px; background-color: green;">#지도</li>
						<br>
						<li class="job6">주&nbsp;&nbsp;&nbsp;소 : 
							<input type="text" class="my_class" name="address"
								placeholder="예) 충북 충주시 호암토성3길 3" style="width:300px;">
						</li>
					</ul>
					<ul>
						<h2>모집 기간</h2>
						<li class="job7">기간 : <input type="text" class="my_class" 
							placeholder="예) 2023.11.22~2024.12.25"></li>
					</ul>
						<label><input class="register" name="application_period" type="submit" value="등록하기"></label>
				</form>
			</div>
		</div>
		<footer> </footer>
	</div>
</body>
</html>