package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.team.dto.LoginDTO;
import com.team.dto.NoticePageCount;

@Repository
public class LoginDAOImpl implements LoginDAO {
	@Autowired
	SqlSession sqlSession;

	public List<LoginDTO> memberList(int memberstart,Model model) {
		NoticePageCount pc = noticePagingNum(memberstart);
		model.addAttribute("pc",pc);
		return sqlSession.selectList("sql.memberPagenation",pc);
	}
	
	public NoticePageCount noticePagingNum(int memberstart) {
		if(memberstart == 0)memberstart=1;
		NoticePageCount pc = new NoticePageCount();
		int pageNum=10;
		int totalPage = sqlSession.selectOne("sql.memberGetTotalPage");
		int totEndPage = totalPage/pageNum + (totalPage%pageNum == 0 ?0 :1);
		int startPage = (memberstart - 1) * pageNum + 1;
		int endPage = pageNum * memberstart;
		pc.setTotalPage(totEndPage);
		pc.setStartPage(startPage);
		pc.setEndPage(endPage);
		return pc;
	}

	public List<LoginDTO> loginChk() {
		return sqlSession.selectList("sql.listAll");
	}
	
	public String idCheck(String userId) {
		return sqlSession.selectOne("sql.idCheck",userId);
	}

	public int saveMember(LoginDTO dto) {
		return sqlSession.insert("sql.saveMember", dto);
	}
	
	public void apiSaveMember(LoginDTO dto) {
		sqlSession.insert("sql.apiSaveMember",dto);
	}

	public void deleteMember(LoginDTO dto) {
		sqlSession.delete("sql.deleteMember", dto);
	}

	public void updateMember(LoginDTO dto) {
		sqlSession.update("sql.updateMember", dto);
	}

	public LoginDTO memberInfo(LoginDTO dto) {
		return sqlSession.selectOne("sql.memberInfo", dto);
	}

	public String getMaster(String id) {
		return sqlSession.selectOne("sql.getMaster", id);
	}

	public List<LoginDTO> kakaoIdCheck() {
		return sqlSession.selectList("sql.listAll");
	}

	public List<LoginDTO> naverIdCheck() {
		return sqlSession.selectList("sql.listAll");
	}

	public LoginDTO find(String id) {
		return sqlSession.selectOne("sql.find",id);
		
	}

	public String chkAnswer(String id) {
		return sqlSession.selectOne("sql.chkAnswer",id);
	}

	public void alterPwd(LoginDTO dto) {
		System.out.println("dao"+dto.getUserId());
		System.out.println("dao"+dto.getUserPwd());
		sqlSession.update("sql.alterPwd",dto);
	}

	public int idConfirm(String id) {
		List<LoginDTO> list=sqlSession.selectList("sql.listAll");
		
		int count=0;
		for(LoginDTO dto : list) {
			if(dto.getUserId().equals(id)) {
				count++;
			}
		}
		
		return count;
	}

	

	
}
