package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.team.dto.BoardDTO;
import com.team.dto.NoticeDTO;
import com.team.dto.QnaDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;

	public ArrayList<BoardDTO> list() {
		return null;
	}

	public void write() {

	}

	public void update() {

	}

	public void delete() {
	}

	public BoardDTO detail() {
		return null;
	}

	public List<NoticeDTO> noticeList() {
		return sqlSession.selectList("sql.noticeListAll");
	}

	public int noticeWrite(NoticeDTO dto) {
		return sqlSession.insert("sql.noticeWrite", dto);
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

	/* QnA부분 */
	public List<QnaDTO> qnaList() {
		return sqlSession.selectList("sql.qnaListAll");
	}

	public void qnaWrite(QnaDTO qnadto) {
		int result = sqlSession.insert("sql.qnaWrite", qnadto);
		
	}

	public void qnaUpdate(QnaDTO qnadto) {
		int result =sqlSession.update("sql.qnaUpdate", qnadto);
	}
	
	public void qnaModify(QnaDTO qnadto) {

	}

	public void qnaDelete(QnaDTO qnadto) {
	int result = sqlSession.delete("sql.qnaDelete",qnadto);
		
	}

	public QnaDTO qnaDetail(QnaDTO qnadto) {
		return sqlSession.selectOne("sql.qnaDetail",qnadto);
	}

	public void qnaViewCnt(int id) {
		sqlSession.update("sql.qnaViewCnt",id);
	}
}
