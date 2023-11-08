<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
	
</style>
</head>
<body>
	<!--  -->
	
	
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d9a9dc5f180000f50bb124866e70f51a&libraries=services"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
	<script>
	
	var geocoder = new kakao.maps.services.Geocoder();
	
	let e1 = 126.867004;
	let e2 = 127.123590;
	let egap = e2 - e1;
	let n1 = 37.43294;
	let n2 = 37.75133;
	let ngap = n2 - n1;
	
	console.log(egap, ngap);
	
	for (let i=0; i<505; i++) {
		
		let e = e1 + Math.random() * egap;
		let n = n1 + Math.random() * ngap;
		
		geocoder.coord2Address(e, n , function(result, status) {
			
			if (status == kakao.maps.services.Status.OK) {
				
				console.log(`\{"\${e}", "\${n}", "\${result[0].address.address_name}"\}, `);
				
			}
			
		});

	}
	
		
	</script>
</body>
</html>






