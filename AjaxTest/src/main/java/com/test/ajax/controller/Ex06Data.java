package com.test.ajax.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.ajax.respository.AjaxDAO;

@WebServlet("/ex06data.do")
public class Ex06Data extends HttpServlet {
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      //1. 데이터(id) 가져오기
      //2. DB작업 -> 중복 체크
      //3. 성공했는지 실패했는지 결과 반환
      
      //1.
      String id=req.getParameter("id");
      
      //2. DAO(Data Access Object) : 데이터를 받아서 처리하는 객체
      AjaxDAO dao= new AjaxDAO();
      
      int result = dao.check(id);  //가능하면 0, 불가능하면 1
      /*
          {
             "result" : 0
          }
      */
      resp.setContentType("application/json");
      resp.setCharacterEncoding("UTF-8");
      
      PrintWriter writer = resp.getWriter();
      
      writer.printf("{ \"result\" : %d }", result);
      
      
      writer.close();
   }
}