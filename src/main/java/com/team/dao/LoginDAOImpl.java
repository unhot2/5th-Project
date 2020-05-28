package com.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.team.dto.LoginDTO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	@Autowired
	SqlSession sqlSession;

	public List<LoginDTO> memberList() {
		return sqlSession.selectList("sql.listAll");
	}

	public List<LoginDTO> loginChk() {
		return sqlSession.selectList("sql.listAll");
	}

	public int saveMember(LoginDTO dto) {
		return sqlSession.insert("sql.saveMember", dto);
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

}
