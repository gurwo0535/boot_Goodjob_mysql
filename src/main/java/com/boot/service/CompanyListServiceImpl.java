package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.CompanyListDAO;
import com.boot.dto.CompanyListDTO;

import lombok.extern.slf4j.Slf4j;

//인터페이스 상속 받고 오버라이딩한다 
@Slf4j
//BoardService와 연결한다 
@Service("BoardService")
public class CompanyListServiceImpl implements CompanyListService {

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public ArrayList<CompanyListDTO> list() {
		log.info("@# BoardServiceImpl list");
		
		CompanyListDAO dao = sqlSession.getMapper(CompanyListDAO.class);
		
		ArrayList<CompanyListDTO> lsit = dao.list();
		
		return lsit;
	}

	@Override
		public void write(HashMap<String , String> param) {
		log.info("@# BoardServiceImpl write");
		
		CompanyListDAO dao = sqlSession.getMapper(CompanyListDAO.class);
		
		 dao.write(param);
		
	}

	@Override
	public CompanyListDTO contentView(HashMap<String , String> param) {
		log.info("@# BoardServiceImpl contentView");
		
		CompanyListDAO dao = sqlSession.getMapper(CompanyListDAO.class);
		
		CompanyListDTO dto = dao.contentView(param); // 위와 동일 
		
		return dto;
	}


}
