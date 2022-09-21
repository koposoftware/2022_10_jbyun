<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8" />
<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="${pageContext.request.contextPath}/resources/vendors/images/apple-touch-icon.png" />
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resources/vendors/images/favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/resources/vendors/images/favicon-16x16.png" />

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet" />
<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendors/styles/core.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendors/styles/icon-font.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendors/styles/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendors/styles/policy.css" />

<script src="https://code.jquery.com/jquery-3.6.1.js"
	integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
	crossorigin="anonymous"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=G-GBZ3SGGX85"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag("js", new Date());

	gtag("config", "G-GBZ3SGGX85");
</script>
<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			"gtm.start" : new Date().getTime(),
			event : "gtm.js"
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != "dataLayer" ? "&l="
				+ l
				: "";
		j.async = true;
		j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, "script", "dataLayer", "GTM-NXZMQSS");
</script>
<!-- End Google Tag Manager -->

<!-- 약관동의서 Toggle -->
<script>
$(document).ready(function(){
	$("#btn1_toggle").click(function() {
		$("#div1").toggle();
	});
	
	$("#btn2_toggle").click(function() {
		$("#div2").toggle();
	});
	
	$("#btn3_toggle").click(function() {
		$("#div3").toggle();
	});
	
	$("#cbx_chkAll").click(function() {
		if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;
		
		if(total != checked) $("#cbx_chkAll").prop("checked", false);
		else $("#cbx_chkAll").prop("checked", true); 
	});
	
	$('#openChkBtn').click(function(){
		/*
		1. 전체동의 체크박스가 선택됐는지 확인
		2. if(yes) -> 컨트롤러한테 파라미터 전송 : openChk=동의 -> /calendar 로 페이지 이동
		3. else -> alert('전체 동의를 클릭해주세요.');
		*/
		if($("#cbx_chkAll").is(":checked")){
			location.href="${pageContext.request.contextPath}/member/chkOpenType";
			
		} else{
			alert('전체 동의를 클릭해주세요.');
		}
	});
});
</script>
<!-- End of Toggle -->

</head>
<body>

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30"
					style="margin: 0 auto;">
					<h3 style="text-align: center;">오픈뱅킹 서비스 이용 약관 동의서</h3>

					<br> <br>

					<h5>오픈뱅킹 서비스 이용 약관</h5>
					<br>
					<button id="btn1_toggle" type="button" class="btn btn-info">약관
						확인</button>

					<div class="form-group" id="div1" style="display: none;">
						<textarea class="form-control" readonly="readonly">
2019. 10. 30 제정
2019. 12. 18 개정
2020. 4. 6 개정
2020. 12. 22 개정
2021. 3. 24 개정
2021. 5. 31 개정
2021. 7. 30 개정

제 1 조 (목적)
본 약관은 (주) 하나은행(이하 “은행”이라 한다)이 “사용자”에게 제공하는 오픈뱅킹서비스(이하
“서비스”라 한다)의 이용과 관련하여 “은행”과 “사용자”간의 권리 및 의무, 책임사항, 서비스
이용조건, 절차 등 기본적인 사항을 정함을 목적으로 합니다.

제 2 조 (용어의 정의)
① 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1. "서비스"란 “은행”이 “오픈뱅킹공동업무”로서 본 약관에 의하여 “사용자”에게 제공하는 금융
관련 서비스 및 “은행”이 제공하는 부가서비스를 총칭합니다.
2. "사용자"란 본 약관에 의하여 “은행”과 체결한 계약에 따라 “은행”이 제공하는 "서비스"를
이용하는 고객을 말합니다.
3. "지급인"이란 "출금계좌"의 명의인을 말합니다.
4. "수취인"이란 "입금계좌"의 명의인을 말합니다.
5. "출금계좌"란 “서비스” 이용을 위해 연결하는 계좌로서 자금 출금이 가능한 예금계좌를
말합니다.
6. "입금계좌"란 "서비스"를 이용하여 자금이 입금되는 예금계좌를 말합니다.
7. “신용카드”란 “사용자”가 ‘참가기관’으로부터 발급받은 카드를 말하며, 체크카드와 신용카드를
모두 포함합니다.
8. “선불계정”이란 ‘참가기관’ 이 운영 및 제공하는 전자금융거래법에 명시한 선불전자지급수단을
사용할 수 있는 계정을 말합니다.
9. "추심이체"라 함은 "수취인"의 추심지시에 따라 “은행”이 "지급인"의 "출금계좌"에서 자금을
출금하여 같은 “은행” 또는 다른 기관의 계좌에 입금하는 것을 말합니다.
준법감시인 심의필 제 2021-약관-444 호(2021.06.24)
10. “운영기관”이란 “오픈뱅킹공동업무” 중계시스템을 구축하고 운영하는 사단법인 금융결제원을
말하며, “참가기관”이란 오픈뱅킹업무에 참가하고 있는 기관으로서 오픈뱅킹시스템을 통하여
출금․입금, 각종 조회 등의 업무 처리를 제공하는 기관을 말합니다.
11. “오픈뱅킹공동업무”란 “참가기관”이 “운영기관”의 『오픈뱅킹공동업무 이용약관』에 동의하여
“운영기관”의 “오픈뱅킹공동업무” 중계시스템과 “참가기관”의 처리시스템을 오픈 API(Application 
Programming Interface)와 통신 회선으로 연결하여 다른 “참가기관” 내의 금융서비스를 “은행”이
다른 기관과 별도 제휴 계약 없이 “사용자”에게 제공하는 금융 관련 업무를 총칭합니다.
가. “출금이체업무”란 “은행”의 출금에 동의한 “사용자”의 “출금계좌”에서 자금을 출금하여
“은행”의 수납계정 또는 계좌로 실시간 입금하는 업무를 말합니다.
나. “입금이체업무”란 “은행”의 지급계정 또는 계좌에서 자금을 출금하여 “수취인”의 계좌로
실시간 입금하는 업무를 말합니다.
다. “잔액조회업무”란 “사용자”가 “은행”이 제공하는 “서비스”를 통해 본인계좌의 또는
“선불계정”의 잔액을 실시간으로 조회하는 업무를 말합니다. 
라. “거래내역조회업무”란 “사용자”가 “은행”이 제공하는 “서비스”를 통해 본인계좌 또는 본인
“신용카드”, “선불계정”의 거래내역을 실시간으로 조회하는 업무를 말합니다. 
마. “실명조회업무”란 “은행”이 “서비스”를 이용하는 “사용자”의 계좌, “신용카드”, “선불계정”의
정상여부 및 실명을 실시간으로 조회하는 업무를 말합니다. 
12. “모바일기기”란 이동통신망 또는 와이파이 등의 무선 네트워크를 이용할 수 있는 스마트폰, 
태블릿 PC, 스마트워치, 웨어러블 장비 등의 기기를 통칭합니다. 
② 본 약관에서 별도로 정의하지 아니한 용어는 『전자금융거래법』 및 『전자금융거래기본약관』, 
『예금거래기본약관』, 『여신전문금융업법』 등 관계 법령과 약관에서 정하는 바에 따르며, 그 외는
일반 상관례에 따릅니다. 

제 3 조 (서비스의 종류)
① “은행”은 “사용자”에게 “오픈뱅킹공동업무”를 통해 다음과 같은 “서비스”를 제공합니다.
1. 조회 서비스: “사용자”가 “은행”이 제공하는 “서비스”를 통해 사전에 등록한 본인계좌 및
“선불계정”의 잔액, 거래내역, 계좌정보 등과 본인 “신용카드”의 카드정보, 카드사용내역,
카드대금청구정보 그리고 자금을 수취할 수취인 또는 출금이체 신청을 한 사용자의 계좌 또는
“신용카드”, “선불계정”의 정상여부 및 실명을 실시간 조회하는 서비스
가. 잔액조회업무 서비스
나. 거래내역조회업무 서비스
다. 실명조회업무 서비스
2. 이체 서비스: “사용자”가 출금에 동의한 “출금계좌”에서 자금을 출금하여 "사용자"의 지시에
따라 특정 계좌 등으로 실시간 입금하는 서비스
준법감시인 심의필 제 2021-약관-444 호(2021.06.24)
가. 출금이체업무 서비스
나. 입금이체업무 서비스
② “은행”은 “사용자”에게 “오픈뱅킹공동업무”에 부가하여 다음과 같은 “서비스”를 제공합니다.
1. 자동이체 서비스: “사용자"의 사전 지시에 따라 “사용자”가 출금에 동의한 “출금계좌”에서
자금을 출금하여 특정 계좌 등으로 정해진 기일에 입금하는 이체하는 서비스 (상세 내용은
“은행”의 ‘계좌간 자동이체 약관’을 준용함)
2. 금융 서비스: “출금계좌”에서 자금을 출금하여 금융상품 신규 가입, 외화 환전 등 다양한 금융
거래를 이용하는 서비스
3. 자금 모으기 서비스: 다수의 “출금계좌”에서 특정 계좌로 입금하는 서비스
4. 자산관리 서비스 : 은행이 오픈뱅킹서비스 및 그 밖의 방법을 통해 제공받은 정보를 활용하여
“사용자”에게 다양한 맞춤정보 제공, 상품 추천 등을 하는 서비스입니다. 다만, 
본인신용정보관리업에 해당하는 사항은 은행이 본인신용정보관리업 허가를 받은 이후부터
제공됩니다.
5. 기타 은행이 정한 서비스
③ “은행”은 서비스 별 거래 가능한 계좌, “신용카드”, “선불계정” 등 서비스에 관한 자세한 내용을
홈페이지에 안내합니다.

제 4 조 (서비스의 제공)
① 제 7 조에 따라 “은행”은 “가입신청자”의 이용신청을 승낙함과 동시에 “가입신청자”는 “은행”이
제공하는 “서비스”의 “사용자”가 되며, 이때부터 “은행”은 “사용자”에게 본 약관이 정하는
“서비스”를 제공합니다.
② “은행”은 본 약관이 정한 “서비스” 외에 추가적인 “서비스”를 제공하기 위하여 “사용자”에게
별도의 추가적인 약관 동의, 정보 수집 및 이용 동의 등 절차의 이행을 요청할 수 있으며, 이러한
절차가 완료되지 않는 경우 “사용자”는 추가적인 “서비스”의 전부 또는 일부를 이용할 수
없습니다. 
③ “오픈뱅킹공동업무”를 위해 “운영기관”에 설치한 중계시스템과 “참가기관”의 처리시스템을
활용하여 “서비스”를 제공하는 기관 중에서 영업점 창구에서도 “서비스”를 제공하는 경우,
“사용자”는 계좌의 예금주 본인확인 또는 “신용카드” “사용자”의 본인확인 절차와 신청서 작성을
통해 “서비스”를 이용할 수 있습니다.

제 5 조 (이체대상 및 출금한도)
① 이체 서비스의 이체 대상은 현금으로 합니다.
② “사용자”의 전 기관에 개설된 계좌를 통합한 이체 서비스의 일일 이용한도는 “운영기관”에서
정하는 한도로 합니다.
준법감시인 심의필 제 2021-약관-444 호(2021.06.24)
③ “출금계좌”의 출금가능금액(한도대출 약정이 있는 경우 대출한도 포함)이 이체 요청 금액에
미달하는 경우 이체거래가 제한됩니다. 또한 “출금계좌”에 등록된 지급정지 등 법적제한, 
금융거래 한도계좌 등 “출금계좌”의 “은행”이 정한 기준에 따라 거래가 제한될 수 있습니다. 

제 6 조 (출금계좌 지정 동의 및 철회)
① “사용자”는 관련 법령에 따라 “은행”이 제공하는 방식과 요건에 따라 “출금계좌”의 출금
동의를 제공하여야 합니다.
② “사용자”는 “은행”의 거래지시에 따라 “사용자”의 계좌 원장에 출금기록이 기입되기 전까지는
“은행”에 대하여 전항의 규정에 따른 동의의 철회를 요청할 수 있습니다. 다만, “은행”에 대한
철회의 의사표시 이전에 발생한 출금에 대해서는 이의를 제기할 수 없습니다. 
③ “사용자”는 서비스에 등록된 “출금계좌”를 삭제하는 방법으로 전 2 항의 출금 동의를 철회할
수 있습니다. 

제 7 조 (이용계약의 체결)
① “은행”과 “사용자” 사이의 서비스 이용계약(이하 "이용계약"이라 함)은 “사용자”가 되고자 하는
자(이하 “가입신청자”라 함)가 “은행”이 정한 양식에 따라 가입신청을 하고 “은행”이 이에 대해
승낙함으로써 체결됩니다.
② “은행”은 “가입신청자”의 가입신청이 제 11 조 제 2 항 각 호의 어느 하나에 해당하는 경우 이를
승낙하지 않을 수 있습니다.
③ “은행”은 “가입신청자”의 가입신청이 다음 각 호의 어느 하나에 해당하는 사유가 발생하거나
확인된 경우 이를 승낙하지 않을 수 있습니다. 
1. 사용자가 과거에 본 약관을 위반하여 서비스 이용계약을 해지당한 경우
2. 만 14 세 미만의 자가 이용 신청하는 경우

제 8 조 (인증)
“은행”은 서비스의 종류 및 보안수준에 따라 별도로 인증수단을 적용할 수 있습니다.

제 9 조 (사용자에 대한 통지)
① “은행”이 “사용자”에 대한 통지를 하는 경우 본 약관에 별도 규정이 없는 한 “사용자”의
전자우편 등의 방법으로 통지합니다.
② “은행”은 “사용자” 전체에 대하여 통지하는 경우 이를 은행 홈페이지에 게시합니다. 다만,
“사용자”에게 중대한 영향을 미치는 사항에 대하여는 전자우편 등이 방법으로 개별 통지합니다.

제 10 조 (사용자 정보의 제공 및 변경)
준법감시인 심의필 제 2021-약관-444 호(2021.06.24)
① “은행”은 이용계약 체결 이후 필요한 경우 “사용자”의 동의를 받아 “사용자”의 정보를
추가적으로 수집할 수 있습니다. 
② “사용자”는 “은행”에 제공한 고객정보에 변경사항이 있을 경우 이를 온라인으로 수정하거나
고객센터를 통해 “은행”에 알려야 하며, 신고사항의 변경은 “은행”이 신고를 접수하고 전산입력에
요구되는 합리적인 시간이 지난 후에 그 효력이 생깁니다. 만약 이를 알리지 않아 발생한
불이익에 대해서는 『전자금융거래기본약관』 및 『예금거래기본약관』에 따릅니다.

제 11 조 (이용계약의 해지)
① “사용자”는 언제든지 이용계약 해지 신청을 할 수 있으며, “은행”은 관련 법령 등이 정하는
바에 따라 이를 즉시 처리하여야 합니다.
② “은행”은 “사용자”에게 다음 각 호의 어느 하나에 해당하는 사유가 발생하거나 확인된 경우
이용계약을 해지할 수 있습니다. 
1. 사용자가 서비스 이용정지 기간 중에 이용계약을 임의로 해지하고 재이용신청 하는 경우
2. 타인의 정보를 이용한 가입신청을 하는 경우
3. 허위의 정보를 기재하거나, “은행”이 제시하는 내용을 기재하지 않은 경우
4. 가입신청자의 기타 제반 사항을 위반하며 신청하는 경우
5. 사용자가 서비스의 원활한 제공을 방해하거나 시도하는 경우
6. 이미 가입된 고객이 중복하여 가입신청 하는 경우
7. 다른 사용자의 권리나 명예, 신용 기타 정당한 이익을 침해하거나 대한민국 법령 또는 선량한
풍속 기타 사회질서에 위배되는 행위를 한 경우
8. 기타 본 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우
③ “은행”은 이용계약을 해지하는 경우 사전에 “사용자”에게 해지 사유를 밝혀 해지의사를
통지하며, “사용자”는 상당한 기간 내에 이의를 신청할 수 있습니다.

제 12 조 (서비스의 중단)
① “서비스”의 이용은 “은행”의 업무상 또는 기술상의 특별한 지장이 없는 한 연중무휴, 1 일
24 시간 제공을 원칙으로 하되, 다음 각 호의 어느 하나의 경우에는 “서비스”의 전부 또는 일부가
제한될 수 있습니다.
1. “운영기관”,”참가기관"과 “은행”의 시스템 점검시간
2. “서비스” 운영상의 필요
3. 정보통신설비의 보수점검, 증설, 교체, 이전 등 시스템 관리 업무
4. 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우
5. 기타 천재지변, 전쟁, 폭동, 테러, 국가비상사태 등 불가항력적 사유가 있는 경우 및 해킹, 
컴퓨터 바이러스, 논리폭탄, 메일폭탄, 서비스 거부 또는 고출력 전자기파 등의 방법으로 인한
준법감시인 심의필 제 2021-약관-444 호(2021.06.24)
전자적 침해 사고에 대응하기 위한 경우
6. “은행”이 정한 서비스 제공환경이 아니거나 기술상 서비스 제공이 불가능한 경우
② 제 1 항에 따라 “서비스”의 제공을 일시적으로 중단하는 경우 “은행”은 사전에 서비스 중단을
공지합니다. 다만, 불가피하게 사전 공지를 할 수 없는 경우 “은행”은 이를 사후에 공지할 수
있습니다. 
③ “서비스”는 관련 법령, 정책 변화에 따라 달라질 수 있으며, “은행”은 “서비스” 운영상 상당한
이유가 있는 경우에는 “서비스”의 전체 또는 일부의 제공을 일시적으로 중단할 수 있습니다. 
“은행”은 “서비스”를 변경하고자 하는 경우 본 약관 제 16 조를 준용합니다.

제 13 조 (수수료)
① “은행”은 사용자의 서비스 이용에 따른 수수료를 부과할 수 있습니다. 
② “은행”은 수수료에 관한 사항을 홈페이지 등에 게시합니다.
③ “은행”은 수수료를 변경하고자 하는 경우 본 약관 제 16 조를 준용합니다.

제 14 조 (준수사항)
① “사용자”는 “서비스”의 이용과 관련하여 관계 법령, 약관, 세부이용지침, 서비스 이용안내 및
“은행”이 통지한 공지사항 등을 준수하여야 하며, 안전한 “서비스” 이용을 위하여 “사용자”가 다음
각 호의 행위를 하는 것은 금지됩니다. 
1. “은행”이 제공하는 “서비스” 이용방법에 의하지 아니하고 비정상적인 방법으로 “서비스”를
이용하거나 시스템에 접근하는 행위
2. 타인의 명의, 휴대폰 정보, 계좌 정보 등을 도용하여 “은행”이 제공하는 “서비스”를 이용하는
행위
3. 여신전문금융업법 등 법령에 의하여 금지된 방법으로 비정상적인 결제를 하는 행위
4. “은행”이 게시한 정보의 무단 변경 또는 “은행”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 
등의 송신 또는 게시하는 행위
5. “은행” 및 기타 제 3 자의 저작권 등 지식재산권에 대한 침해행위
6. “은행” 및 기타 제 3 자의 명예를 손상시키거나 업무를 방해하는 행위
7. “은행”이 제공하는 “서비스”를 이용하여 얻은 은행의 정보를 은행의 사전 동의 없이 복제 또는
유통시키거나 상업적으로 이용하는 행위
8. “서비스”와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스
감염 자료를 등록 또는 유포하는 행위
9. 은행의 “서비스”를 해킹하거나 해킹에 이용하는 일체의 행위
10. 구매의사 없이 반복적인 결제를 발생시키는 행위
11. 접근매체의 대여나 양도·양수 등 관련 법령에서 금지하는 행위
준법감시인 심의필 제 2021-약관-444 호(2021.06.24)
12. 자신의 “모바일기기”를 제 3 자가 사용하도록 하는 행위
13. 기타 불법적이거나 부당한 행위
② “사용자”는 다음 각 호의 어느 하나에 해당하는 경우 즉시 그 사실을 “은행”에 통보해야
합니다. 
1. 자신의 명의가 도용되거나 제 3 자에게 부정하게 사용된 것을 인지한 경우
2. 서비스를 이용 중인 “모바일기기” 및 USIM 칩 등의 분실, 도난
3. 비밀번호, PIN 번호 등의 누설
4. 접근매체의 훼손, 도난, 분실, 위조 또는 변조의 사실을 알았거나 기타 거래절차상 비밀을
요하는 사항이 누설되었음을 알게된 경우
③ “은행”은 제 1 항 각 호의 어느 하나에 해당하는 사유가 발생하는 경우 사전에 “사용자”에게
통지하고 “서비스” 전부 또는 일부 이용을 정지하거나 이용계약을 해지할 수 있습니다.
④ “은행”은 “서비스”를 수행함에 있어서 알게 된 고객정보를 사용자의 동의 없이는 다른
사람에게 제공 및 누설하는 등의 업무 목적외 사용을 하여서는 아니 되며, 관리소홀로 인한
사용자 관련 정보 도난 및 유출이 되지 않도록 관리합니다.
⑤ “사용자”가 송금금액, 수취기관, 수취인 계좌번호 등을 잘못 입력하여 송금(이하
“착오송금”이라 합니다)하였음을 은행에게 통지하는 경우 『전자금융거래기본약관』, 
『예금거래기본약관』 및 「내부 규정」을 준용하여 필요한 조치를 합니다.
⑥ “은행”은 통신장애 및 기타의 사유로 인하여 거래 지시된 이체거래가 처리 불가능할 경우
“사용자”의 요청에 따라 이체 금액을 반환합니다. “은행”은 사용자의 요청이 있을 때에는 사고
또는 장애의 사유를 지체 없이 “사용자”에게 통지하여야 합니다.

제 15 조 (면책)
이 서비스와 관련한 “은행”의 손실부담 및 면책사항은 전자금융거래 기본약관 제 20 조(손해배상
및 면책)에서 정하는 바에 따르기로 합니다.

제 16 조 (약관의 변경)
① “은행”은 본 약관의 내용을 “사용자”가 쉽게 알 수 있도록 홈페이지 화면에 게시합니다.
② “은행”은 관계 법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있으며, 약관의 변경과
관련된 사항은 『전자금융거래기본약관』의 내용을 준용합니다.

제 17 조 (약관적용의 우선순위)
① “은행”은 개별 “서비스”에 적용될 사항의 규정을 위해 개별약관을 사용하거나 이용정책을
구분하여 “서비스”를 운영할 수 있으며, 해당 내용이 본 약관과 상충되는 경우 개별 “서비스”에
대한 개별약관 및 이용정책이 우선합니다.
준법감시인 심의필 제 2021-약관-444 호(2021.06.24)
② 본 약관에서 정하지 아니한 사항에 대해서는 『전자금융거래기본약관』, 금융결제원의
『오픈뱅킹공동업무규약』 및 『오픈뱅킹공동업무규약 시행세칙』과 관련 법령이 우선 적용됩니다. 

제 18 조 (준거법 및 재판관할)
① 본 약관과 관련된 사항에 대하여는 대한민국 법률을 준거법으로 합니다.
② 본 약관과 관련하여 발생한 분쟁에 대해서는 법령에서 별도로 정하는 경우를 제외하고
민사소송법에서 정하는 바에 따릅니다.


부 칙(제정)
본 약관은 2019 년 10 월 30 일부터 시행합니다.
부 칙(1)
본 약관은 2019 년 12 월 18 일부터 개정 시행합니다.
부 칙(2)
본 약관은 2020 년 4 월 6 일부터 개정 시행합니다.
부 칙(3)
본 약관은 2020 년 12 월 22 일부터 개정 시행합니다.
부 칙(4)
본 약관은 2021 년 3 월 24 일부터 개정 시행합니다.
부 칙(5)
본 약관은 2021 년 5 월 31 일부터 개정 시행합니다.
부 칙(6)
본 약관은 2021 년 7 월 30 일부터 개정 시행합니다.
						</textarea>
					</div><br>
					<input type="checkbox" name="chk">
					<label>위의 약관을 읽고 동의합니다.</label>
					<br>
					<hr>
					<br>
					<h5>「오픈뱅킹공동업무」 금융정보조회 약관</h5>
					<br>
					<button id="btn2_toggle" type="button" class="btn btn-info">약관
						확인</button>

					<div class="form-group" id="div2" style="display: none;">
						<textarea class="form-control" readonly="readonly">
제1조 (목적) 
이 약관은 ㈜하나은행(이하 “은행”이라 한다)과 오픈뱅킹공동업무를 기반으로 이용기관이 제
공하는 이용기관 서비스를 통해 본인명의 계좌의 금융정보를 확인하고자 하는 개인(이하 “사
용자”라 한다) 사이에 이용기관 서비스를 통한 금융정보조회에 관한 제반사항을 정함을 목적
으로 합니다.

제2조 (용어의 정의) 
① “오픈뱅킹공동업무”란 이용기관과 참가은행이 개별은행과 별도 제휴 없이도 핀테크 서비
스를 원활하게 제공할 수 있도록 오픈뱅킹중계센터가 참가은행의 핵심 금융서비스(조회, 
이체)를 표준화된 오픈 API 형태로 운영·제공하는 업무를 말합니다.
② “이용기관”이란 오픈뱅킹공동업무 이용승인을 받아 금융결제원과 오픈뱅킹 이용계약을 체
결한 사업자를 말합니다.
③ “참가은행”이란 오픈뱅킹공동업무에 참가하는 금융결제원의 사원, 준사원 및 특별참가기
관을 말합니다
④ “금융정보조회”란 사용자가 이용기관 서비스를 통해 제5조에 명시하는 본인명의 계좌의
금융정보조회 요청시 은행이 금융정보를 제공하는 업무를 말합니다. 
⑤ “오픈뱅킹중계센터”란 오픈뱅킹공동업무를 구축하고 운영하며, 은행과 이용기관을 서로
중계하는 곳으로 금융결제원이 담당합니다. 

제3조 (금융정보조회 신청) 
① 사용자가 본인명의 계좌의 금융정보를 조회하기 위해서는 오픈뱅킹중계센터가 제공하는
웹페이지 또는 앱 및 이용기관 서비스에서 금융정보조회 신청을 하며, 관련 정보는 해당
은행으로 전달됩니다.
② 사용자는 금융실명거래 및 비밀보장에 관한 법률 제4조 제1항에 따라 서면(전자서명이 있
는 전자문서 포함), ARS 또는 금융실명거래 및 비밀보장에 관한 법률 시행령에 의거 금융
위원회가 고시하는 금융정보조회 동의방법으로 금융정보조회 신청을 하여야 합니다.
③ 오픈뱅킹중계센터는 사용자의 금융정보조회 신청시 사용자가 신청한 실계좌번호를 가상의
계좌번호(이하 “핀테크이용번호”라 한다)로 이용기관에 제공합니다. 단, 대형 이용기관(은
준법감시인심의필 제 2021-약관-442 호(2021.05.27)
행 등)인 경우에는 실계좌번호로 제공할 수 있습니다.
④ 사용자는 자신의 정보를 보호받고 관리하기 위해 금융정보조회 신청을 1년 단위로 재신청
하여야 합니다.
⑤ 은행은 개인정보보호법 및 신용정보의 이용 및 보호에 관한 법률 등에서 정한 바에 따라
사용자의 정보를 관리하여야 하며, 이에 대한 세부적인 내용은 은행의 개인정보처리(취급)
방침에 정한 바에 의합니다. 은행은 개인정보처리(취급) 방침에 대한 세부내용을 홈페이지
에 게시하여 사용자가 확인할 수 있도록 합니다.

제4조 (금융정보조회 이용시간) 
금융정보조회 이용시간은 연중무휴로 하루 중 이용시간은 00시10분부터 23시50분까지로 합
니다. 

제5조 (금융정보의 종류) 
은행에서 제공하는 금융정보의 종류는 다음 각 호와 같습니다.
1.잔액조회 : 사용자 본인명의 계좌에 대한 실시간 잔액 조회
2.거래내역조회 : 사용자 본인명의 계좌에 대한 실시간 거래내역(거래일시, 거래점명, 거
래금액, 거래 후 잔액, 통장인자내용) 조회

제6조 (금융정보제공 및 금융정보 제공사실 통보) 
① 사용자가 이용기관 서비스를 통해 은행으로 금융정보조회를 요청하는 경우에는 은행은 별
도의 통지 없이 사용자의 금융정보 내역을 오픈뱅킹중계센터로 통지하며, 오픈뱅킹중계센
터는 실계좌번호를 핀테크이용번호로 변경하여 이용기관으로 통지합니다. 단, 대형 이용기
관(은행 등)인 경우에는 실계좌번호로 제공할 수 있습니다.
② 은행은 금융실명거래 및 비밀보장에 관한 법률 제4조의2 제1항에 따라 사용자가 오픈뱅킹
중계센터에 등록한 연락처로 사용자에게 금융정보 제공사실을 서면(전자문서 포함)으로 통
보하여야 합니다. 
③ 사용자는 연락처가 변경되는 경우 오픈뱅킹중계센터 및 이용기관 서비스에 등록한 연락처
를 변경하여야 하며, 미변경으로 인하여 발생한 손해에 대해, 은행은 그 책임을 지지 않습
니다. 단, 은행의 고의 또는 과실이 있는 경우에는 손해의 전부 또는 일부를 부담하기로
합니다.
④ 은행은 사용자의 편익을 위해 금융정보 제공사실을 1년 이내 단위로 통보 할 수 있습니다.
준법감시인심의필 제 2021-약관-442 호(2021.05.27)

제7조 (금융정보조회 중단) 
오픈뱅킹공동업무 관련 시스템의 장애 및 유지보수 등 부득이한 사유가 발생한 경우 금융정
보조회를 중단할 수 있습니다.

제8조 (금융정보조회 해지) 
① 사용자는 오픈뱅킹중계센터에서 제공하는 웹페이지 또는 앱 및 이용기관 서비스에서 금융
정보조회 해지를 신청하여야 합니다.
② 은행은 사용자가 다음 각 호에 해당할 때에는 상당한 기간을 정하여 사용자에게 최고하고
그 기간 내에 해당 사유가 해소되지 않는 경우 금융정보조회를 해지할 수 있습니다. 다만, 
해당 사유가 해소되는 것이 불가능한 상황이거나 관련 법규에서 별도로 정하는 경우에는
최고하지 아니할 수 있습니다.
1. 사용자가 타인의 정보를 도용하거나 허위내용을 등록한 경우
2. 1년 이상 이용기관의 조회요청이 없는 경우

제9조 (면책 사항) 
이 약관의 면책 사항에 대해서는 전자금융거래기본약관을 준용합니다.

제10조 (관할 법원) 
이 약관에 따른 금융정보조회와 관련하여 은행과 사용자 사이에 소송의 필요가 있는 경우 관할
법원은 민사소송법에서 정하는 바에 따릅니다.

제11조 (약관의 변경) 
은행이 이 약관을 변경하고자 하는 경우에는 전자금융거래기본약관의 약관의 변경 조항을 준용
합니다.

제12조 (다른 약관과의 관계) 
① 금융정보조회에는 이 약관 외에도 전자금융거래 기본약관이 적용되며, 규정된 내용이 서
로 다를 경우 이 약관의 규정이 우선합니다.
② 이 약관과 전자금융거래 기본약관에 정하지 않은 사항에 대하여는 다른 약정이 없으면 전
자금융거래법, 금융실명거래 및 비밀보장에 관한 법률 등 관계법령을 적용합니다.

준법감시인심의필 제 2021-약관-442 호(2021.05.27)

부 칙
제1조 (시행일) 
이 약관은 2021. 07. 01일부터 시행합니다.

제2조 (기존 약관의 적용) 
“은행권 공동 오픈플랫폼 이용기관”이 제공하는 서비스를 이용 중인 사용자에 대해서는 오픈뱅
킹공동 업무가 전체 이용기관으로 확대시행 전까지 기존 「은행권 공동 오픈플랫폼 금융정보조
회 약관」을 적용하기로 하며, 확대시행일은 오픈뱅킹중계센터 홈페이지를 통해 공지합니다.
						</textarea>
					</div><br>
					<input type="checkbox" name="chk">
					<label>위의 약관을 읽고 동의합니다.</label>

					<br>
					<hr>
					<br>

					<h5>「오픈뱅킹공동업무」 자동계좌이체 약관</h5>
					<br>
					<button id="btn3_toggle" type="button" class="btn btn-info">약관
						확인</button>

					<div class="form-group" id="div3" style="display: none;">
						<textarea class="form-control" readonly="readonly">
					
제1조 (목적) 
이 약관은 ㈜하나은행(이하 “은행”이라 한다)과 오픈뱅킹공동업무를 기반으로 이용기관이 제
공하는 이용기관 서비스를 통해 본인명의 계좌에서 자금을 출금하고자 하는 개인(이하 “사용
자”라 한다) 사이에 이용기관 서비스를 통한 자동계좌이체에 관한 제반 사항을 정함을 목적으
로 합니다.

제2조 (용어의 정의) 
① “오픈뱅킹공동업무”란 이용기관과 참가은행이 개별은행과 별도 제휴 없이도 핀테크 서비
스를 원활하게 제공할 수 있도록 오픈뱅킹중계센터가 참가은행의 핵심 금융서비스(조회, 
이체)를 표준화된 오픈API 형태로 운영·제공하는 업무를 말합니다. 
② “이용기관”이란 오픈뱅킹공동업무 이용승인을 받아 금융결제원과 오픈뱅킹 이용계약을 체
결한 사업자를 말합니다.
③ “참가은행”이란 오픈뱅킹공동업무에 참가하는 금융결제원의 사원, 준사원 및 특별참가기
관을 말합니다.
④ “자동이체”란 이용기관이 사용자의 예금계좌에서 출금하여 이용기관의 수납 모계좌로 집
금하는 업무를 말합니다. 
⑤ “오픈뱅킹중계센터”란 오픈뱅킹공동업무를 구축하고 운영하며, 은행과 이용기관을 서로
중계하는 곳으로 금융결제원이 담당합니다. 
⑥ “자동이체정보 통합관리시스템”이란 자동이체 등록내역 및 동의자료를 통합 보관 및 관리
하고 사용자가 자동이체 등록내역을 조회, 변경 할 수 있는 기능을 제공하는 금융기관이
공동 개발한 시스템을 말합니다. 

제3조 (자동이체 신청) 
① 사용자가 본인명의 계좌의 자동이체를 실행하기 위해서는 오픈뱅킹중계센터가 제공하는
웹페이지 또는 앱 및 이용기관 서비스에서 출금에 대한 사전 동의를 신청해야 합니다. 신
청 정보는 해당 은행으로 전달됩니다
② 사용자는 자동이체를 실행하기 위하여 전자금융거래법 제15조 제1항에 따라 서면(전자서
명이 있는 전자문서 포함), ARS·녹취 등에 의하여 출금에 대한 사전동의를 오픈뱅킹중계
준법감시인 심사필 제 2021-약관-443 호(2021.05.27)
센터 또는 이용기관에 제출하여야 합니다.
③ 사용자는 거래지시와 처리결과가 일치하는지 여부를 확인하여야 합니다. 일치하지 않는
경우에는 이를 즉시 은행에 통지하여야 합니다.
④ 은행은 개인정보보호법 및 신용정보의 이용 및 보호에 관한 법률 등에서 정한 바에 따라
사용자의 정보를 관리하여야 하며, 이에 대한 세부적인 내용은 은행의 개인정보처리(취급)
방침에 정한 바에 의합니다. 은행은 개인정보처리(취급) 방침에 대한 세부내용을 홈페이지
에 게시하여 사용자가 확인할 수 있도록 합니다.

제4조 (자동이체 이용시간) 
자동이체 이용시간은 연중무휴로 운영되며 하루 중 이용시간은 00시10분부터 23시50분까지
로 합니다.

제5조 (자동이체) 
① 이용기관이 은행에게 특정 일자에 사용자의 자동이체 신청계좌에서 일정 금액을 출금하여
이용기관의 수납 모계좌로 이체를 요청하는 경우, 은행은 사용자에게 별도의 통지 없이
자금의 이체를 처리합니다. 
② 제1항의 경우 은행의 예금약관이나 약정서의 규정에도 불구하고 은행은 예금청구서, 기타
관련 증서 없이 출금이체 처리절차에 의하여 출금할 수 있습니다.

제6조 (출금한도) 
① 자동이체 신청에 의한 사용자의 지정계좌에서의 출금은 이용기관의 출금요청을 접수한 은
행의 예금잔액(자동대출 약정이 있는 경우 대출한도 포함)에 한하여 이용기관의 청구대로
출금합니다. 단, 사용자 지정계좌의 예금잔액이 출금일 현재 이용기관의 청구금액보다 부
족하거나, 예금의 지급제한, 약정대출의 연체 등의 사유에 해당되는 경우 출금이체 처리를
하지 아니합니다.
② 사용자의 자동이체 출금한도는 오픈뱅킹중계센터의 사용자 별 이용한도에 따릅니다.

제7조 (최초 개시일) 
자동이체 신규신청에 의한 자동이체 개시일은 은행이 이용기관으로부터 통지받은 출금일을 최
초 개시일로 합니다.
준법감시인 심사필 제 2021-약관-443 호(2021.05.27)

제8조 (신청서 제출기한) 
자동이체 신규 신청(변경 및 해지 신청 포함)시 해당 출금일 이전까지 신청서를 제출하여야
하며, 출금이체 해지신청서를 제출한 경우는 전자금융거래법에 규정된 출금동의의 철회로 봅
니다.

제9조 (출금기준 및 이의제기) 
자동이체 신청에 의한 사용자의 지정계좌에서의 출금은 이용기관의 출금요청을 접수한 은행의
제6조에 의한 출금한도에 한하여 이용기관의 청구대로 출금합니다. 다만, 청구금액에 이의가
있는 경우에는 사용자와 이용기관이 협의하여 조정하여야 합니다.

제10조 (정보제공) 
자동이체 업무처리와 관련된 사용자의 계좌번호, 생년월일 등의 정보는 이용기관에 제공되지
않으며, 은행은 자동이체 업무 이외의 목적으로 해당 정보를 사용 할 수 없습니다.

제11조 (은행의 자동이체 해지) 
은행은 1년 이상 이용기관의 출금요청이 없는 자동이체에 대하여 사용자 또는 이용기관에 상
당한 기간을 정하여 이행을 최고하고 그 기간 내에 이행하지 아니한 때에 한하여 자동이체를
해지할 수 있습니다. 

제12조 (자동이체 통합관리) 
① 오픈뱅킹공동업무 자동이체는 계좌이동서비스 대상입니다.
② 은행은 자동이체정보 통합관리시스템에 사용자의 자동이체 등록정보를 제공하여 사용자가
조회, 해지, 출금계좌 변경 신청이 가능하도록 합니다.
③ 사용자가 자동이체 통합관리시스템 또는 은행 채널(영업점 및 인터넷뱅킹 등)에서 출금계
좌를 타은행 계좌로 변경 신청할 경우 변경 전 출금계좌에 등록되어 있는 출금이체 해지
후 변경 후 출금계좌로 신규 등록됩니다.

제13조 (면책 사항) 
이 약관의 면책 사항에 대해서는 전자금융기본약관을 준용합니다. 

제14조 (관할 법원) 
이 약관에 따른 자동계좌이체와 관련하여 은행과 사용자 사이에 소송의 필요가 있는 경우 관할
준법감시인 심사필 제 2021-약관-443 호(2021.05.27)
법원은 민사소송법에서 정하는 바에 따릅니다.

제15조 (약관의 변경) 
은행이 이 약관을 변경하고자 하는 경우에는 전자금융거래기본약관의 약관의 변경 조항을 준용
합니다. 

제16조 (다른 약관과의 관계) 
① 자동이체 거래에 관하여는 동 약관의 규정이 다른 약관에 우선합니다.
② 이 약관과 전자금융거래 기본약관에 정하지 않은 사항에 대하여는 전자금융거래법 등 관
계법령을 적용합니다.
③ 이 약관에 정하지 않은 사항에 대하여는 은행의 자동이체약관을 따릅니다.
 
 
부 칙
제1조 (시행일) 
이 약관은 2021. 07.01일부터 시행합니다.

제2조 (기존 약관의 적용) 
“은행권 공동 오픈플랫폼 이용기관”이 제공하는 서비스를 이용 중인 사용자에 대해서는 오픈뱅
킹공동 업무가 전체 이용기관으로 확대시행 전까지 기존 「은행권 공동 오픈플랫폼」 자동계좌
이체 약관을 적용하기로 하며, 확대시행일은 오픈뱅킹중계센터 홈페이지를 통해 공지합니다.
						</textarea>
					</div><br>
					<input type="checkbox" name="chk">
					<label>위의 약관을 읽고 동의합니다.</label>
					<br><br>
					
					<input type="checkbox" id="cbx_chkAll" value="전체동의"/>
					<label>전체동의</label>
					
					<br><br>
					
					<button id="openChkBtn" type="button" class="btn btn-info" style="margin: 0 auto;">확인</button>
					
				</div>
			</div>
		</div>

		<br>
		<div>
		</div>
	</div>

	<!-- footer -->
	<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>

	<!-- js -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/scripts/core.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendors/scripts/script.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendors/scripts/process.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendors/scripts/layout-settings.js"></script>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->
</body>


</html>
