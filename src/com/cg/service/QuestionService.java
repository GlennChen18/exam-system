package com.cg.service;

import com.cg.dao.QuestionDao;
import com.cg.dao.impl.QuestionDaoImpl;
import com.cg.entity.Single;

import java.util.List;

public class QuestionService {
    private QuestionDao questionDao=new QuestionDaoImpl();
    //根据科目查询对应试题集
    public List<Single> queryPaperSingle(String paper) {
        return questionDao.queryPaperSingle(paper);
    }

    public List<String> queryPaperList() {
        return questionDao.queryPaperList();
    }
}
