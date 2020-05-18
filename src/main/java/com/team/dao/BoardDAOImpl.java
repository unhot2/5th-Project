package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.dto.BoardDTO;
import com.team.dto.NoticeDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;

	public ArrayList<BoardDTO> list() {
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

	public BoardDTO detail() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<NoticeDTO> noticeList() {
		return sqlSession.selectList("sql.noticeListAll");
	}

	public int noticeWrite(NoticeDTO dto) {
		return sqlSession.insert("sql.noticeInsert", dto);
	}

	public NoticeDTO noticeUpdate(NoticeDTO dto) {
		return sqlSession.selectOne("sql.noticeDetail", dto);
	}

	public void noticeModify(NoticeDTO dto) {
		int chk = sqlSession.update("sql.noticeModify",dto);
	}

	public void noticeDelete(NoticeDTO dto) {
		int chk = sqlSession.delete("sql.noticeDelete", dto);
	}

	public NoticeDTO noticeDetail(NoticeDTO dto) {
		return sqlSession.selectOne("sql.noticeDetail", dto);
	}

	public void noticeViewCnt(int id) {
		sqlSession.update("sql.noticeViewCnt",id);
	}

}
