package com.cg.dao;

import com.cg.entity.Single;

import java.util.List;

public interface QuestionDao {
    List<Single> queryPaperSingle(String paper);

    List<String> queryPaperList();
}
