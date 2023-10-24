package com.test.java;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Ex01 {
	
	public static void main(String[] args) {
		
		
		//Jsoup
		//- 브라우저처럼 사이트 접속 > 접속한 페이지의 소스 읽어서 소스 분석을한다 
		//소스분석을 한다는것은 프로그램을 이해한다는 것과 같기때문에 탐색할수있다. 결과적으로 원하는 부분을 추출한다.
		//- JavaScript의 DOM을 조작하는 분위기
		
		try {
			//접속해서 읽어온 페이지 소스를 관리하는 문서 객체
			Document doc=
		Jsoup.connect("http://localhost:8090/memo/list.do").get();
			
//			System.out.println(doc.html());
			
			
			
			Element h1 = doc.selectFirst("body > h1");
			
			System.out.println(h1.text());
			
			
			//메모들 내용
			Elements item = doc.select(".item>div:nth-child(2)");
			
			for (Element ele : item) {
				System.out.println(ele.text());
			}
			
			
			Element result = doc.selectFirst("#result");
			System.out.println("result: "+result.text());
			
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}
		
		
		
		
		
		
		
	}

}
