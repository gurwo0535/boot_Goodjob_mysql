package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.dto.CompanyListDTO;

//@Mapper 일단 필요없음
public interface CompanyListService {
	// 추상 메소드 넣습니다 
	public ArrayList<CompanyListDTO> list();
//	public void write( HashMap<String, String> param);	
	public CompanyListDTO contentView(HashMap<String , String> param) ;

}
