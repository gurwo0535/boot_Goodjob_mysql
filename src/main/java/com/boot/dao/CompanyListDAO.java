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
	public void write(HashMap<String, String> param);	
	public CompanyListDTO contentView(HashMap<String , String> param) ;
			
		}
			
 // ======================  인터페이스화 / mydatis 화 ====================================			
		
/*		

	JdbcTemplate template=null;
	
	public BoardDAO() {
		template=Constant.template;
	}
	
	public ArrayList<BoardDTO> list() {
		
//		방법 3, 1줄
		return  (ArrayList<BoardDTO>) template.query("select boardNo, boardName, boardTitle, boardContent, boardDate, boardHit from tbl_board", new BeanPropertyRowMapper(BoardDTO.class));
		
		
//		//방법 2.  2줄 
//		String sql="select boardNo, boardName, boardTitle, boardContent, boardDate, boardHit from tbl_board";
//		return  (ArrayList<BoardDTO>) template.query(sql, new BeanPropertyRowMapper(BoardDTO.class));
//		
		
		/*
		방법 1.번 4줄
		ArrayList<BoardDTO> dtos=null;
		String sql="select boardNo, boardName, boardTitle, boardContent, boardDate, boardHit from tbl_board";
//		query : jdbc template 쿼리 처리
		dtos = (ArrayList<BoardDTO>) template.query(sql, new BeanPropertyRowMapper(BoardDTO.class));
		
		return dtos;

		
		
		
	}
	
	//write  // update 
	public void write(final String boardName, final String boardTitle, final String boardContent) {
		template.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String sql="insert into tbl_board(boardName, boardTitle, boardContent, boardHit) "
						+ "values(?,?,?,0)";
				
				PreparedStatement pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, boardName);
				pstmt.setString(2, boardTitle);
				pstmt.setString(3, boardContent);
				return pstmt;
			}
		});
		
		
	}
	
	
	// contentView //보기 // 
	public BoardDTO contentView(String strID) {
		
		//
		upHit(strID);
		
		String sql="select boardNo, boardName, boardTitle, boardContent, boardDate, boardHit from tbl_board where boardNo="+strID;
		return (BoardDTO)template.queryForObject(sql, new BeanPropertyRowMapper<BoardDTO>(BoardDTO.class));
		
	}
	

	public void upHit(final String boardNo) {
		
		//업데이트 쿼리
		String sql="update tbl_board set boardHit=boardHit+1 where boardNo=?";	
		
		template.update(sql, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				
				ps.setInt(1, Integer.parseInt(boardNo));
			}
		});

		
	//modify 
	// 수정 
	
	//final로 교체 한다 
	public void modify(final String boardNo, final String boardName, final String boardTitle, final String boardContent) {
		
		String sql="update tbl_board set boardName=?, boardTitle=?, boardContent=? where boardNo=?";
		template.update(sql, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, boardName);
				ps.setString(2, boardTitle);
				ps.setString(3, boardContent);
				ps.setInt(4, Integer.parseInt(boardNo));
				
			}
		});
	}
		
	
	
	//final로 변경 
	public void delete(final String strID) {
		
		//쿼리 
		String sql="delete from tbl_board where boardNo=?";
		//(jdbc) teplate.update로 삭제 진행 
		template.update(sql, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, Integer.parseInt(strID));
				
			}
		});
		

	}

}
*/















