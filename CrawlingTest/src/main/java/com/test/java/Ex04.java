package com.test.java;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;


public class Ex04 {
   
   public static void main(String[] args) {
      
      //Selenium(셀레니움)
      //- 테스트 자동화 도구
      
      //1. 셀레니움 라이브러리
      //2. 브라우저 드라이버
      
      //https://googlechromelabs.github.io/chrome-for-testing/#stable
      
      //1. C:\class\dev\chromdriver.exe
      //2. lib > jar 복사
      
//      m1();
      m2();
      
//	   m3();
	   
	   
	   
   }//main

   private static void m3() {
	   
	   String webDriverID = "webdriver.edge.driver";
	      String path = "C:\\class\\dev\\msedgedriver.exe";
	      
	      System.setProperty(webDriverID, path);
	      
	      EdgeOptions options = new EdgeOptions();
	      
	      //options.setCapability("ignoreProtectedModeSettings", true);
	      
	      //브라우저 참조 객체
	      WebDriver driver = new EdgeDriver(options);
	      
	      String url = "http://localhost:8090/memo/list.do";
	      
	      driver.get(url);
	      
	      WebElement btn1 = driver.findElement(By.id("btn1"));
	      btn1.click();
	      
	      WebElement result = driver.findElement(By.id("result"));
	      System.out.println(result.getText());
	      
	   
	   
	   
	   
	
}

private static void m2() {

	   
	   String webDriverID = "webdriver.edge.driver";
	      String path = "C:\\class\\dev\\msedgedriver.exe";
	      
	      System.setProperty(webDriverID, path);
	      
	      EdgeOptions options = new EdgeOptions();
	      
	      //options.setCapability("ignoreProtectedModeSettings", true);
	      
	      //브라우저 참조 객체
	      WebDriver driver = new EdgeDriver(options);
	      
	      String url = "http://lms1.sist.co.kr/worknet/SLogin.asp";
	      
	      driver.get(url);
	      
	      WebElement id = driver.findElement(By.id("strLoginID"));
	      WebElement pw = driver.findElement(By.id("strLoginPwd"));
	      
	      id.sendKeys("이슬아");
	      pw.sendKeys("8980");
	      
//	      #content > div > form > table > tbody > tr > td > div > div.login-form > div.login-btn > input
	
	      WebElement btn = driver.findElement(By.cssSelector("#content > div > form > table > tbody > tr > td > div > div.login-form > div.login-btn > input"));
	      
	      btn.click();
	      
	      //페이지 전환 > 딜레이 발생
	      try {
			
	    	  Thread.sleep(1000);
		} catch (Exception e) {
			e.printStackTrace();
		}
	      
	      WebElement td = driver.findElement(By.cssSelector("#content > div > div > div > div.panel-body > form > table > thead > tr:nth-child(5) > td:nth-child(2)"));
}

private static void m1() {
      
      String webDriverID = "webdriver.edge.driver";
      String path = "C:\\class\\dev\\msedgedriver.exe";
      
      System.setProperty(webDriverID, path);
      
      EdgeOptions options = new EdgeOptions();
      
      //options.setCapability("ignoreProtectedModeSettings", true);
      
      //브라우저 참조 객체
      WebDriver driver = new EdgeDriver(options);
      
      String url = "http://naver.com";
      
      driver.get(url);
      
      //네이버 검색 창
      WebElement query = driver.findElement(By.id("query"));
      query.sendKeys("셀레니움"); 
      
      //자동 검색 눌러줌
      WebElement btn =  driver.findElement(By.className("btn_search"));
      
      btn.click();
      
   }
}