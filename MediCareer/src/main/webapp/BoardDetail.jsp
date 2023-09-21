<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>

	<!-- CSS 파일 연결 -->
 	<link rel="stylesheet" type="text/css" href="resources/css/index.css">
<style>
#layerPopup{
    padding: 10px 10px;
/*    border: 3px solid #A5E9FF;*/
    position: absolute;
    /* left: 100px; */
    top: 100px;
    background: #fff;
    width: 98%;
    height: 371px;
    z-index: 99;
    margin: 1% 1%;
}

#layerPopup button{
  cursor:pointer;
}

#singoBox{
	width:100%;

}

#singoCon{
	margin-top:10px;
	padding : 10px;
	width:100%;
	border:solid 3px #A5E9FF;
	height:250px;
}



</style>
</head>

<body>

<div id="community">
    <section id="header">
        <div class="heading">
            <div class="back"><a href="#">뒤로 돌아가기</a></div>
            <div class="title">선배 QnA</div>
        </div>
    </section>
    <section id="headerSpace"></section>
    <section id="bo_v" class="viewskin">
        <div class="header">
	         <c:if test="${not empty category}">
			    <div class="cate">
			        <c:choose>
			            <c:when test="${category == '일상'}">
			                <span class="cate01">일상</span>
			            </c:when>
			            <c:when test="${category == '취업'}">
			                <span class="cate02">취업</span>
			            </c:when>
			            <c:when test="${category == '해외'}">
			                <span class="cate03">해외</span>
			            </c:when>
			            
			        </c:choose>
			    </div>
			</c:if>
            <div class="tool">
                <ul>
                    <li><a href="#"><i class="ic-bookmark bookBtn" style='<?php echo $bookStatus;?>'></i></a></li>
                    <li><a href="#"><i class="ic-share shareBtn"></i></a></li>
                    <li>
                        <a href="javascript:;"><i class="ic-pencil toolBtn"></i></a>
                        <ul class="toolLayer" style="border: solid 0.1px lightgray;">
						    <c:choose>
						        <c:when test="${view.mb_id == member.mb_id}">
						            <li>
						                <a href="/bbs/write.jsp?bo_table=review&w=u&wr_id=${view.wr_id}"><i class="ic-pencil"></i><p>수정</p></a>
						            </li>
						            <li class="deleteBtn">
						                <a href="javascript:delBbs(${view.wr_id});"><i class="ic-delete"></i><p>삭제</p></a>
						            </li>
						        </c:when>
						        <c:otherwise>
						            <li class="reportBtn">
						                <a href="javascript:singo(${param.wr_id});"><i class="ic-report"></i><p>신고</p></a>
						            </li>
						            <li class="blockBtn">
						                <a href="javascript:setBan(${param.wr_id}, '${view.mb_id}');"><i class="ic-block"></i><p>차단</p></a>
						            </li>
						        </c:otherwise>
						    </c:choose>
						</ul>
                    </li>
                </ul>
                <a href="<?php echo $write_href ?>" class="ic-pencil"></a>
            </div>
        </div>
        <div class="upper">
            <div class="subject">글제목출력하기</div>
            <div class="info">
                <span> 몇 일전?날짜표시</span>
                <span>
				    <c:choose>
				        <c:when test="${view.wr_1 == 'on'}">
				            익명
				        </c:when>
				        <c:otherwise>
				            ${view.name}
				        </c:otherwise>
				    </c:choose>
				</span>

            </div>
        </div>
        <div class="content">
         	<p>파일출력인데 될까?</p>
        </div>
        <div class="middle">
            <div class="hash">
                <div class="tit">태그</div>
                <div class="txt"><?php echo $view['wr_2'] ?></div>
            </div>
			<script src="https://kit.fontawesome.com/6478f529f2.js" crossorigin="anonymous"> </script>
            <div class="like">
				<!-- /bbs/good.php?bo_table=review&wr_id=159&good=good& <?php echo $good_href.'&amp;'.$qstr ?> -->
                <a href="javascript:setGood();" id="good_buttonA"><i class="ic-like-o"></i> 
<!-- 				<b id="bo_v_act_good">이 글을 추천하셨습니다</b> -->
					<p>
						<span id="gCnt">추천수</span>
					</p>
				</a>

            </div>
			
        </div>
        <div class="comment">

            <div class="uppr">
                <div class="total">답변 <span id="replyCnt">1(답변수)</span></div>

	                <div class="act"><a href="javascript:viewReply();">답변하기</a></div>
				
            </div>
			<!--answer-->
			<div class="answer" id="replyWrite" name="replyWrite" style="display:none">
                <div class="fhead">
                    <div class="tit">답변하기</div>
                    <div class="chk">
                        <label><input type="checkbox" id="anony" name="anony"><p>익명</p><i></i></label>
                    </div>
                </div>
                <div class="ftext">
					<div class="tw-p-3.5 tw-overflow-y-auto tw-max-h-[500px]">
						<textarea style="height: 120px !important;width:100%;border:solid 0.5px #fff;" placeholder="질문에 대한 답변을 남겨주세요." style="height: 120px !important;" id="wr_content" name="wr_content" class="wr_content"></textarea>
						<div id="write_error_msg" class="write_error_msg" style="color: red;"></div>
					</div>
                </div>
                <div class="fboot">
                    <div class="chk">
                        <label><input type="checkbox"><i></i><p>답변 내용을 내 트랜드에 업로드합니다.</p></label>
                    </div>
					<div class="con1" style="text-align:right">
						<a href="javascript:writeDb();" style="background-color: #55dfff;">답변하기</a>
					</div>
                </div>
            </div>


			<!--reply List-->
            <div class="cont">
                <ul id="replyList"></ul>
            </div>

            <div class="form" style="display:none">
                <div class="tit">
                    <p>댓글 작성</p>
                    <label><input type="checkbox"><p>익명</p><i></i></label>
                </div>
                <div class="con">
                    <input type="text" placeholder="댓글을 작성해주세요.">
                    <button type="submit">작성</button>
                </div>
            </div>			
        </div>
    </section>

    <section id="relation_qa">
        <div class="title">관련 질문</div>
        <div class="list">
            <ul>
				ajax예정 관련질문리스트
            </ul>
        </div>
    </section>
</div>

<div id="copy" class="layer">
    <div class="box">
        <strong>링크를 복사했어요.</strong>
        <p>카카오톡으로도 공유할까요?</p>
        <img src="<?php echo G5_URL ?>/resources/img/kakao.png">
        <a onclick="javascript:Kakao_sendLink();"">공유하기</a>
        <button type="button" class="close">화면 닫기</button>
    </div>
    <div class="bg"></div>
</div>

<div id="mynote" class="layer">
    <div class="box">
        <strong>마이노트에 저장했어요.</strong>
        <p>카카오톡으로도 공유할까요?</p>
        <img src="<?php echo G5_URL ?>/resources/img/kakao.png">
        <a onclick="javascript:Kakao_sendLink();"">공유하기</a>
        <button type="button" class="close">화면 닫기</button>
    </div>
    <div class="bg"></div>
</div>

<div id="delete" class="layer">
    <div class="box">
        <strong>질문을 삭제할까요?</strong>
        <p>이 글은 다른 유저들에게도 많은 도움이 될거에요.</p>
        <a href="<?php echo $delete_href ?>">삭제하기</a>
        <button type="button" class="close">화면 닫기</button>
    </div>
    <div class="bg"></div>
</div>
<div id="report" class="layer">
    <div class="box">
        <strong>신고했어요.</strong>
        <p>운영진이 검토할게요! </p>
        <button type="button" class="close">화면 닫기</button>
    </div>
    <div class="bg"></div>
</div>
<div id="block" class="layer">
    <div class="box">
        <strong>해당 유저를 차단했어요.</strong>
        <p>마이페이지에서 차단한 회원을 관리할 수 있어요.</p>
        <button type="button" onclick="javascript:location.href='/bbs/board.php?bo_table=review&sca=<?php echo $_GET['sca'];?>';" class="close">화면 닫기</button>
    </div>
    <div class="bg"></div>
</div>
<script type="text/javascript">
    $(function(){
        $(".bookBtn").on("click", function(){

			if(confirm("마이노트에 저장할까요?")){ 
				
				setScrap();
				
			}
        });
        $(".shareBtn").on("click", function(){
            $("html, body").css("overflow", "hidden");
            $("#copy").addClass("active");
        });
        $(".layer .close, .layer .bg").on("click", function(){
            $(this).closest(".layer").removeClass("active");
            $('html, body').css("overflow", "initial");
        });
        $(".toolBtn").on("click", function(){
            $(this).closest("li").find("ul").toggleClass("on");
        });

//        $(".deleteBtn").on("click", function(){
//            $("html, body").css("overflow", "hidden");
//            $(".toolLayer").removeClass("on");
//            $("#delete").addClass("active");
//        });
//        $(".reportBtn").on("click", function(){
//            $("html, body").css("overflow", "hidden");
//            $(".toolLayer").removeClass("on");
//            $("#report").addClass("active");
//        });
//        $(".blockBtn").on("click", function(){
//            $("html, body").css("overflow", "hidden");
//            $(".toolLayer").removeClass("on");
//            $("#block").addClass("active");
//        });
    })
</script>

<!-- 기존 뷰페이지 -->
<section id="bo_v" style="width:<?php echo $width; ?>;display:none" >
        <!-- 게시판 이름 표시 <div id="bo_v_table"><?php echo ($board['bo_mobile_subject'] ? $board['bo_mobile_subject'] : $board['bo_subject']); ?></div> -->
        <ul class="btn_top top btn_bo_user">
<!--        <?php if ($write_href) { ?><li><a href="<?php echo $write_href ?>" class="btn_b03 btn" title="글쓰기"><i class="fa fa-pencil" aria-hidden="true"></i><span class="sound_only">글쓰기</a></li><?php } ?> -->
            <li> 
                <button type="button" class="btn_more_opt btn_b03 btn is_view_btn" title="게시판 리스트 옵션"><i class="fa fa-ellipsis-v" aria-hidden="true"></i><span class="sound_only">게시판 리스트 옵션</span></button>
                <?php ob_start(); ?>
                <ul class="more_opt is_view_btn">
<!--                     <?php if ($reply_href) { ?><li><a href="<?php echo $reply_href ?>"><i class="fa fa-reply" aria-hidden="true"></i> 답변</a></li><?php } ?> -->
                    <?php if ($update_href) { ?><li><a href="<?php echo $update_href ?>">

					<!--<i class="fa fa-pencil-square-o" aria-hidden="true"></i>-->
					
					수정</a></li><?php } ?>
                    <?php if ($delete_href) { ?><li><a href="<?php echo $delete_href ?>" onclick="del(this.href); return false;">
					
					<!--<i class="fa fa-trash-o" aria-hidden="true"></i>-->  
					
					삭제</a></li><?php } ?>
                    <?php if ($copy_href) { ?><li><a href="<?php echo $copy_href ?>" onclick="board_move(this.href); return false;">
					
					<!--<i class="fa fa-files-o" aria-hidden="true"></i>--> 
					
					복사</a></li><?php } ?>

                    <?php if ($move_href) { ?><li><a href="<?php echo $move_href ?>" onclick="board_move(this.href); return false;">
					
					<!--<i class="fa fa-arrows" aria-hidden="true"></i>-->
					
					이동</a></li><?php } ?>

                    <?php if ($search_href) { ?><li><a href="<?php echo $search_href ?>">
					
					검색</a></li><?php } ?>


                    <li><a href="/bbs/board.php?bo_table=review&sca=<?php echo $_GET['sca'];?>" class="btn_list">
					<!--<i class="fa fa-list" aria-hidden="true"></i>--> 
					
					목록 </a></li>


					<!--신고하기 --> 
					<li id="Lpop">신고</li>


					<!--신고문구 --> 
<!-- 					신고가 접수되었습니다.  -->
<!-- 					 -->
<!-- 					24시간 이내에 관리자의 검토가 이루어지며,  -->
<!-- 					부적절한 내용의 글인 경우 게시글이 삭제됩니다.  -->
<!-- 					 -->
<!-- 					부적절한 글을 누적 3회 이상 게시한 경우,  -->
<!-- 					해당 유저는 글 작성을 할 수 없습니다. -->

					<li onclick="setBan();">차단
					</li>

                </ul>
                <?php $link_buttons = ob_get_contents(); ob_end_flush(); ?>
            </li>
        </ul>
        <script>
            jQuery(function($){
                // 게시판 보기 버튼 옵션
                $(".btn_more_opt.is_view_btn").on("click", function(e) {
                    e.stopPropagation();
                    $(".more_opt.is_view_btn").toggle();
                });
                $(document).on("click", function (e) {
                    if(!$(e.target).closest('.is_view_btn').length) {
                        $(".more_opt.is_view_btn").hide();
                    }
                });
            });
        </script>
        <div id="bo_v_info">
            <h2>페이지 정보</h2>
            <span class="sound_only">작성자 </span><?php echo $view['name'] ?>
    <!--        <span class="ip">--><?php //if ($is_ip_view) { echo "&nbsp;($ip)"; } ?><!--</span>-->
            <span class="sound_only">작성일</span><?php echo date("y-m-d H:i", strtotime($view['wr_datetime'])) ?>
			<?php 
				if($view['wr_10']!=""){ 
					echo " [ 수정됨 ] "; 
				}
			?>
    <!--        <span class="sound_only">조회</span><strong><i class="fa fa-eye" aria-hidden="true"></i> --><?php //echo number_format($view['wr_hit']) ?><!--</strong>-->
    <!--        <span class="sound_only">댓글</span><strong><i class="fa fa-commenting-o" aria-hidden="true"></i> --><?php //echo number_format($view['wr_comment']) ?><!--</strong>-->
        </div>
		
        <header>
            <h2 id="bo_v_title">
				<div id="contentsTop" style="float:right">
					<?php
						$sqlA="select count(*) as CNT from g5_singo where wr_id='".$_GET['wr_id']."' and mb_id='".$member['mb_id']."'";
						$resultA=sql_fetch($sqlA);						
						if($resultA['CNT']=="0"){
					?>
<!-- 					<a href="#layerPopup" id="Lpop"> -->
<!-- 						<img src="/img/singo_ban.png" style="width:25px;height:25px"><span><!--신고--></span>
<!-- 					</a> -->



					<?php }else{  ?>
						
					<?php }?>



<!-- 					<a href="javascript:setBan()"><img src="/img/user_ban.png" style="width:20px;height:20px"><span><!--차단--></span></a> 
				</div>
                <?php if ($category_name) { ?>
                <span class="bo_v_cate"><?php echo $view['ca_name']; // 분류 출력 끝 ?></span>
                <?php } ?>
                <span class="bo_v_tit"><?php echo cut_str(get_text($view['wr_subject']), 70); // 글제목 출력 ?></span>
            </h2>
        </header>

		<div id="layerPopup">
			<div>
				<a href="#" style="font-size: 16px;font-weight:700;">신고하기</a>
				<button type="button" style="float:right; font-size: 12px; color: #808089; line-height : 25px; ">닫기</button>
			</div>
			<div id="singoBox">
				<!-- 신고내용 부분 -->
				<textarea id="singoCon" placeholder="검증되지 않은 내용이거나, 다른 회원에게 불쾌감을 줄 수 있는 글인 경우 관리자에게 알려주세요! 👀"></textarea>
			</div>
			<div>
				<div id="setSingo" pval="<?php echo $_GET['wr_id'];?>" style="background-color:#A5E9FF;width:100px;height:40px;color:#fff;font-weight:bold;line-height:40px;text-align:center;border-radius:30px;display: inline-block;float: right;">검토 요청</div>
				<div>
					<p style = "font-size: 12px; color: #808089; line-height : 25px;" > ※ 관리자가 24시간 내에 반영할게요! </p>
				</div>
			</div>
		</div>

        <section id="bo_v_atc">
            <h2 id="bo_v_atc_title">본문</h2>
			
            <?php
            // 파일 출력
            $v_img_count = count($view['file']);
            if($v_img_count) {
                echo "<div id=\"bo_v_img\">\n";

                foreach($view['file'] as $view_file) {
                    echo get_file_thumbnail($view_file);
                }
                echo "</div>\n";
            }
            ?>

            <div id="bo_v_con" style="min-height:50px;"><?php echo nl2br(get_view_thumbnail($view['content'])); ?></div>
            <?php //echo $view['rich_content']; // {이미지:0} 과 같은 코드를 사용할 경우 ?>

			<div style='margin-bottom:30px'><?php echo $view['wr_1'];?></div> 

            <?php if ($is_signature) { ?><p><?php echo $signature ?></p><?php } ?>

            <?php if ( $good_href || $nogood_href) { ?>
            <div id="bo_v_act">
                <?php if ($good_href) { ?>
                <span class="bo_v_act_gng">
                    <a href="<?php echo $good_href.'&amp;'.$qstr ?>" id="good_button" class="bo_v_good"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> <span class="sound_only">추천</span><strong><?php echo number_format($view['wr_good']) ?></strong></a>
<!-- <b id="bo_v_act_good">이 글을 추천하셨습니다</b> -->
                </span>
                <?php } ?>
                <?php if ($nogood_href) { ?>
                <span class="bo_v_act_gng">
                    <a href="<?php echo $nogood_href.'&amp;'.$qstr ?>" id="nogood_button" class="bo_v_nogood"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> <span class="sound_only">비추천</span><strong><?php echo number_format($view['wr_nogood']) ?></strong></a>
                    <b id="bo_v_act_nogood"></b>
                </span>
                <?php } ?>
            </div>
            <?php } else {
                if($board['bo_use_good'] || $board['bo_use_nogood']) {
            ?>
            <div id="bo_v_act">
                <?php if($board['bo_use_good']) { ?><span class="bo_v_good"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i><span class="sound_only">추천</span><strong><?php echo number_format($view['wr_good']) ?></strong></span><?php } ?>
                <?php if($board['bo_use_nogood']) { ?><span class="bo_v_nogood"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i><span class="sound_only">비추천</span> <strong><?php echo number_format($view['wr_nogood']) ?></strong></span><?php } ?>
            </div>


			

            <?php
                }
            }
            ?>
            <div id="bo_v_btn">
                <div class="upper">소중한 사람에게 알려주세요.🥰</div>
                <div class="flex">
                <?php if($isScrap=="Y"){ ?>
                <a href="/pages/scrap.php">
                    <img src="/img/icon_sns_scrap.png"><span>저장 완료</span>
                </a>
                <?php }else{ ?>
                    <a href="javascript:setScrap()"><img src="/img/icon_sns_scrap.png"><span>노트 저장</span></a>
                <?php }?>

                <?php //if ($board['bo_use_sns']){ 
					//echo G5_SNS_PATH."/view.sns.skin.php";
				?>

				<a href="javascript:Kakao_sendLink();" class="sns_k">
					<img src="/img/icon_sns_kakao.png" alt="카카오톡으로 보내기" width="40">
					<span>카카오톡</span>
				</a>
                    <?php //include_once( G5_SNS_PATH."/view.sns.skin.php" ); ?>
                <?php //} ?>
				
                <a href="javascript:clip()"><img src="/img/icon_sns_copy.png"><span>링크 복사</span></a>			


                </div>
                <script>
                function clip(){
                    var url = '';
                    var textarea = document.createElement("textarea");
                    document.body.appendChild(textarea);
                    url = window.document.location.href;
                    textarea.value = url;
                    textarea.select();
                    document.execCommand("copy");
                    document.body.removeChild(textarea);
                    alert("링크가 복사되었습니다. 소중한 사람들에게 알려주세요!")
                };
                </script>
            </div>
        </section>

  




</body>
</html>