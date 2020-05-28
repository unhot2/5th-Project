package com.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.team.dto.ClothDTO;

@Controller
public class ClothDAOImpl implements ClothDAO{
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ClothDTO> clothlist(Model model) {
		return sqlSession.selectList("sql.clothListAll");
	}

	@Override
	public void clothInfoInput() {
		
	}
	
	
	
	
	
}
