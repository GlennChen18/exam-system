package com.cg.dao;

import com.cg.entity.Grade;

import java.util.List;

public interface GradeDao {
    //添加分数
    void addGrade(Grade grade);

    List<Grade> queryGradeList(int userId);
}
