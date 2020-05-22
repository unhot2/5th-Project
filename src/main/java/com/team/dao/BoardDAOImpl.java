package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.team.dto.BoardDTO;
import com.team.dto.NoticeDTO;
import com.team.dto.PageCount;
import com.team.dto.QnaDTO;
import com.team.dto.ReplyDTO;

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
		sqlSession.update("sql.noticeModify",dto);
	}

	public void noticeDelete(NoticeDTO dto) {
		sqlSession.delete("sql.noticeDelete", dto);
	}

	public NoticeDTO noticeDetail(NoticeDTO dto) {
		return sqlSession.selectOne("sql.noticeDetail", dto);
	}

	public void noticeViewCnt(int id) {
		sqlSession.update("sql.noticeViewCnt",id);
	}

	/* QnA부분 */
	public List<QnaDTO> qnaList(int start,Model model) {
		PageCount pc = qnaPagingNum(start);
		model.addAttribute("pc",pc);
		return sqlSession.selectList("sql.qnaListAll",pc);
	}

	public void qnaWrite(QnaDTO qnadto) {
		sqlSession.insert("sql.qnaWrite", qnadto);
		
	}

	public void qnaUpdate(QnaDTO qnadto) {
		sqlSession.update("sql.qnaUpdate", qnadto);
	}
	
	public void qnaModify(QnaDTO qnadto) {

	}

	public void qnaDelete(QnaDTO qnadto) {
	sqlSession.delete("sql.qnaDelete",qnadto);
		
	}

	public QnaDTO qnaDetail(QnaDTO qnadto) {
		return sqlSession.selectOne("sql.qnaDetail",qnadto);
	}

	public void qnaViewCnt(int id) {
		sqlSession.update("sql.qnaViewCnt",id);
	}
	
	public PageCount qnaPagingNum(int start) {
		if(start == 0)start=1;
		PageCount pc = new PageCount();
		int pageNum=5;
		int totalPage = sqlSession.selectOne("sql.qnaGetTotalPage");
		int totEndPage = totalPage/pageNum + (totalPage%pageNum == 0 ?0 :1);
		int startPage = (start - 1) * pageNum + 1;
		int endPage = pageNum * start;
		pc.setTotalPage(totEndPage);
		pc.setStartPage(startPage);
		pc.setEndPage(endPage);
		return pc;
	}

	public List<QnaDTO> qnaSearch(String search) {
		return sqlSession.selectList("sql.search",search);
	}

	public void qnaReplyWrite(ReplyDTO dto) {
		sqlSession.insert("sql.qnaReplyWrite",dto);
	}

	public List<ReplyDTO> qnaReplyList(int idgroup) {
		return sqlSession.selectList("sql.qnaReplyList",idgroup);
	}
}
