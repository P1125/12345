package co.mydiary;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DiaryOracleDAO implements DAO {
	
	Connection conn;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	
	@Override
	public int insert(DiaryVO vo) {
		int r = 0;
		try {
		//1. connect(연결)
		conn = JdbcUtil.connect();
		String sql = "INSERT INTO diary ( wdate, contents)"
					+ " VALUES(?,?)";
		//2 sql문 준비
		pstmt= conn.prepareStatement(sql); 
		
		//3.sql 실행
		pstmt.setString(1, vo.getWdate());
		pstmt.setString(2, vo.getContents());
		r = pstmt.executeUpdate();
		
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		JdbcUtil.disconnect(conn);
	}
		return r; 
}
	@Override
	public void update(DiaryVO vo) {
		
	}

	@Override
	public int delete(String date) {
		return 0;
	}

	@Override//단건
	public DiaryVO selectDate(String date) {
		DiaryVO vo = null;
		try {
			conn = JdbcUtil.connect();
			String sql = "SELECT WDATE, CONTENTS"
					+ " FROM DIARY"
					+ " WHERE WDATE=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, date);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new DiaryVO();
				vo.setWdate(rs.getString("WDATE"));
				vo.setContents(rs.getString("CONTENTS"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.disconnect(conn);
		}
		return vo;
	}

	@Override // select * from diary where contents like '%' || ? || '%'
	public List<DiaryVO> selectContent(String content) {
		return null;
	}

	@Override//전체
	public List<DiaryVO> selectAll() {
		ArrayList<DiaryVO> list = new ArrayList<DiaryVO>();
		DiaryVO vo = null;
		try {
			conn = JdbcUtil.connect();
			String sql = "SELECT WDATE, CONTENTS"
					+ " FROM DIARY"
					+ " ORDER BY WDATE";
			pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				vo = new DiaryVO();
				vo.setWdate(rs.getString("WDATE")); // IDX 넣어도 되지만 헷갈림
				vo.setContents(rs.getString("CONTENTS"));
				list.add(vo);
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			JdbcUtil.disconnect(conn);
		}
		
		return list;
	}

}
