package board;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class boarddao {
	PreparedStatement pstmt;
	Connection conn;
	
	public boarddao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		conn=DriverManager.getConnection(db , "root", "1234");
	}
	public void list(HttpServletRequest request) throws Exception {
		//쿼리작성
		String sql="select * from board1";
		//심부름꾼생성
		PreparedStatement pstmt=conn.prepareStatement(sql);
		//쿼리실행
		ResultSet rs=pstmt.executeQuery();
		
		//dto를 저장할 ArrayList 생성
		ArrayList<boarddto> list=new ArrayList<boarddto>();
		// 레코드값을 dto에 하나씩 저장 => ArrayList 에 add
		while(rs.next()) {
			boarddto bdto=new boarddto();
			
			bdto.setId(rs.getInt("id"));
			bdto.setName(rs.getString("name"));
			bdto.setTitle(rs.getString("title"));
			bdto.setContent(rs.getString("content"));
			bdto.setWriteday(rs.getString("writeday"));
			bdto.setReadnum(rs.getInt("readnum"));
			
			list.add(bdto);
		}
		//request영역에 ArrayList 를 담는다
		request.setAttribute("list", list);
	}
	
	public void content(HttpServletRequest request) throws Exception {
		//request
		String id=request.getParameter("id");
		//쿼리생성
		String sql="select * from board1 where id=?";
		//심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		//쿼리실행
		ResultSet rs=pstmt.executeQuery();
		rs.next();
		
		//레코드 값을 dto에 저장
		//레코드가 1개 이므로 ArrayList X Dto만 사용
		//하나의 레코드를 dto 에 저장하기
		boarddto bdto=new boarddto();
		
		bdto.setId(rs.getInt("id"));
		bdto.setName(rs.getString("name"));
		bdto.setTitle(rs.getString("title"));
		bdto.setContent(rs.getString("content").replace("\r\n" , "<br>"));
		bdto.setWriteday(rs.getString("writeday"));
		bdto.setReadnum(rs.getInt("readnum"));
		
		request.setAttribute("bdto", bdto);
	}
	
	public void update(HttpServletRequest request) throws Exception {
		String sql="select * from board1 where id=?";
		
		String id=request.getParameter("id");
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		ResultSet rs=pstmt.executeQuery();
		rs.next();
		
		boarddto bdto=new boarddto();
		
		bdto.setId(rs.getInt("id"));
		bdto.setName(rs.getString("name"));
		bdto.setTitle(rs.getString("title"));
		bdto.setContent(rs.getString("content"));
		bdto.setWriteday(rs.getString("writeday"));
		bdto.setReadnum(rs.getInt("readnum"));
		
		request.setAttribute("bdto", bdto);
	}
	
	public void update_ok(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String title=request.getParameter("title");
		String name=request.getParameter("name");
		String content=request.getParameter("content");
		String id=request.getParameter("id");
		
		String sql="update board1 set name=?,title=?,content=? where id=?";
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, content);
		pstmt.setString(4, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}
}
