package com.cg.controller;

import com.cg.entity.Grade;
import com.cg.entity.User;
import com.cg.service.GradeService;
import com.cg.util.BaseServlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GradeController", urlPatterns = "/gradeServlet")
public class GradeController extends BaseServlet {
    private GradeService gradeService = new GradeService();

    //显示总成绩
    public String getGradeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取session
        User user = (User) request.getSession().getAttribute("user");
        List<Grade> gradeList = gradeService.queryGradeList(user.getUser_id());
        request.setAttribute("gradeList", gradeList);
        //转发request.getRequestDispatcher(jsp目录)
        return "WEB-INF/exam/resultTable.jsp";
    }
}
