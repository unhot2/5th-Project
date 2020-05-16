package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.dto.boardDTO;
import com.team.dto.qnaDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	private static final String qnanamespace="sql";
	@Autowired
	SqlSession sqlSession;

	@Override
	public ArrayList<boardDTO> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void write() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boardDTO detail() {
		// TODO Auto-generated method stub
		return null;
	}

	/* QnA부분 */
	@Override
	public List<qnaDTO> qnalist() {
		
		return sqlSession.selectList(qnanamespace+".qnaListAll");
	}

	@Override
	public void qnawrite(qnaDTO qnadto) {
		System.out.println("값들어옴 : "+qnadto.getName());
		int result = sqlSession.insert(qnanamespace+".qnasavedata", qnadto);
		System.out.println("결과 값 :"+result);
		
	}

	@Override
	public void qnaupdate(qnaDTO qnadto) {
		System.out.println("qnaupdate값 들어옴"+qnadto.getName());
		int result =sqlSession.update(qnanamespace+".qnaupdate", qnadto);
		System.out.println(qnadto.getId());
		System.out.println("qnaupdate결과값 :"+result);
	}

	@Override
	public void qnadelete(qnaDTO qnadto) {
		System.out.println("마지막 진짜 쿼리 걸치기전에" +qnadto);
	int result = sqlSession.delete(qnanamespace+".qnadelete",qnadto);
		
	}

	@Override
	public qnaDTO qnadetail(String id) {
		System.out.println("값 들어온다 ㅎㅎ : "+id);
		return sqlSession.selectOne(qnanamespace+".qnadetail",id);
	}
	
}
