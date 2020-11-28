package com.cg.dao.impl;

import com.cg.dao.QuestionDao;
import com.cg.entity.Single;
import com.cg.util.JdbcUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class QuestionDaoImpl implements QuestionDao {
    //使用Jdbc链接数据库，并获取数据库资源
    JdbcTemplate template = new JdbcTemplate(JdbcUtil.getDataSource());
    @Override
    public List<Single> queryPaperSingle(String paper) {
        String sql = "select * from single where paper = ?";
        return template.query(sql,new BeanPropertyRowMapper<Single>(Single.class),paper);
    }

    @Override
    public List<String> queryPaperList() {
        String sql = "SELECT DISTINCT paper FROM single";
        List<String> list = template.queryForList(sql,String.class);
        return list;
    }
}
