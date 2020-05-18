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
	private static final String qnanamespace="sql";
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

	/* QnA부분 */
	public List<QnaDTO> qnalist() {
		
		return sqlSession.selectList(qnanamespace+".qnaListAll");
	}

	public void qnawrite(QnaDTO qnadto) {
		System.out.println("값들어옴 : "+qnadto.getName());
		int result = sqlSession.insert(qnanamespace+".qnasavedata", qnadto);
		System.out.println("결과 값 :"+result);
		
	}

	public void qnaupdate(QnaDTO qnadto) {
		System.out.println("qnaupdate값 들어옴"+qnadto.getName());
		int result =sqlSession.update(qnanamespace+".qnaupdate", qnadto);
		System.out.println(qnadto.getId());
		System.out.println("qnaupdate결과값 :"+result);
	}

	public void qnadelete(QnaDTO qnadto) {
		System.out.println("마지막 진짜 쿼리 걸치기전에" +qnadto);
	int result = sqlSession.delete(qnanamespace+".qnadelete",qnadto);
		
	}

	public QnaDTO qnadetail(String id) {
		System.out.println("값 들어온다 ㅎㅎ : "+id);
		return sqlSession.selectOne(qnanamespace+".qnadetail",id);
	}
}
