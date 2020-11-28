package com.cg.service;

import com.cg.dao.GradeDao;
import com.cg.dao.impl.GradeDaoImpl;
import com.cg.entity.Grade;

import java.util.List;

public class GradeService {
    private GradeDao gradeDao=new GradeDaoImpl();

    public void addGrade(Grade grade) {
         gradeDao.addGrade(grade);
    }

    public List<Grade> queryGradeList(int userId) {
        return gradeDao.queryGradeList(userId);
    }
}
