package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.dto.boardDTO;
import com.team.dto.noticeDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;

	public ArrayList<boardDTO> list() {
		// TODO Auto-generated method stub
		return null;
	}

	public void write() {
		// TODO Auto-generated method stub

	}

	public void update() {
		// TODO Auto-generated method stub

	}

	public void delete() {
		// TODO Auto-generated method stub

	}

	public boardDTO detail() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<noticeDTO> noticeList() {
		return sqlSession.selectList("sql.noticeListAll");
	}

	public int noticeWrite(noticeDTO dto) {
		return sqlSession.insert("sql.noticeInsert", dto);
	}

	public noticeDTO noticeUpdate(noticeDTO dto) {
		return sqlSession.selectOne("sql.noticeDetail", dto);
	}

	public void noticeModify(noticeDTO dto) {
		int chk = sqlSession.update("sql.noticeModify",dto);
	}

	public void noticeDelete(noticeDTO dto) {
		int chk = sqlSession.delete("sql.noticeDelete", dto);
	}

	public noticeDTO noticeDetail(noticeDTO dto) {
		return sqlSession.selectOne("sql.noticeDetail", dto);
	}

}
