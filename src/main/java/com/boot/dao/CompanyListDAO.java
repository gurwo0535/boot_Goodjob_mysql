package com.boot.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.boot.dto.CompanyListDTO;

//spring boot, mybatis
//는 @mapper 필요 

@Mapper
public interface CompanyListDAO {
	
	public ArrayList<CompanyListDTO> list();
//	public void write(HashMap<String, String> param);	
	public CompanyListDTO contentView(HashMap<String , String> param) ;

			
		}
			














