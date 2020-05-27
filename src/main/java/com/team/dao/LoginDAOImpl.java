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

	public List<LoginDTO> loginChk(LoginDTO dto) {
		List<LoginDTO> list = sqlSession.selectList("sql.listAll", dto);
		return list;
	}
	
	public String idCheck(String userId) {
		return sqlSession.selectOne("sql.idCheck",userId);
	}

	public int saveMember(LoginDTO dto) {
		return sqlSession.insert("sql.saveMember", dto);
	}

	public void deleteMember(LoginDTO dto) {
		sqlSession.delete("sql.deleteMember",dto);
	}

	public void updateMember(LoginDTO dto) {
		sqlSession.update("sql.updateMember",dto);
	}

	public LoginDTO memberInfo(LoginDTO dto) {
		return sqlSession.selectOne("sql.memberInfo",dto);
	}

	public String getMaster(String id) {
		return sqlSession.selectOne("sql.getMaster",id);
	}

	
	

}
