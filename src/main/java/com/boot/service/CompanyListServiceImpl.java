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
@Service("CompanyListService")
public class CompanyListServiceImpl implements CompanyListService {

	@Autowired
	private SqlSession sqlSession;
	
	

	
	@Override
	public ArrayList<CompanyListDTO> list() {
		log.info("@# CompanyListServiceImpl list");
		
		CompanyListDAO dao = sqlSession.getMapper(CompanyListDAO.class);
		
		ArrayList<CompanyListDTO> list = dao.list();
		
		return list;
	}


	@Override
	public CompanyListDTO contentView(HashMap<String , String> param) {
		log.info("@# CompanyListServiceImpl contentView");
		
		CompanyListDAO dao = sqlSession.getMapper(CompanyListDAO.class);
		
		CompanyListDTO dto = dao.contentView(param); // 위와 동일 
		
		return dto;
	}

	
}
