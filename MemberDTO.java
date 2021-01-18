package kr.gov.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import kr.gov.dto.MemberDTO;

public class MemberDAO {
	private DataSource dataSource;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Context context;
	ArrayList<MemberDTO> dtos = new ArrayList<>();

    private MemberDAO(){
    	try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/" +"jdbc/dbconn");
			conn = dataSource.getConnection();
			
			System.out.println("DBCP에 있는 컨넥션 객체 얻어오기 성공");
			System.out.println("스레드 명 : " + Thread.currentThread().getName());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
    }

	//신규 회원정보를 DB에 insert하는 메서드 
	public void addMember(MemberDTO dto) {
		int n = 0;
		
		try {
			String sql = "insert into memberDTO values(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPw());
			pstmt.setString(4, dto.getEmail1() + dto.getEmail2());
			pstmt.setString(5, dto.getAddr());
			
			//쿼리 실행
			n = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
}
