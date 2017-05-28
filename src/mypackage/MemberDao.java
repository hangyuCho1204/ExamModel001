package mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDao {
	private Connection conn = null;
	
	public String driver = "oracle.jdbc.driver.OracleDriver";
	public String url = "jdbc:oracle:thin:@localhost:1521:xe";
	public String id = "jspid";
	public String password = "jsppw";
	
	public Member GetMemberById(String id){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " select * from members where id = ?"; // id�� ���̺� �ִ��� Ȯ���ϱ� ���� ����
		
		Member member = null; 
		
		try{
			pstmt = conn.prepareStatement( sql ); 
			pstmt.setString(1, id);// sql ?�ڸ���  id�� �־��(����� �Է� ��)
			rs = pstmt.executeQuery();//DB�� ���� ����
			if(rs.next()){ // �ش� ���̵� �����ϴ� ���
				member = new Member(); // Member ��ü ����
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setPassword(rs.getString("password"));
				return member;
			}
			return null;
		} catch (SQLException e){
			e.printStackTrace();
			return null;
		} finally{
			try {
				if(rs != null){rs.close();}
				if(pstmt != null){pstmt.close();}
				if(conn != null){conn.close();}
			} catch (SQLException e){
				e.printStackTrace();
			}
		}
	}
	public Member GetMemberInfomation( Member member){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " select * from members where id = ? ";
		
		
		
		Member result = null;
		
		try{
			pstmt = conn.prepareStatement( sql );
			pstmt.setString(1, member.getId());
			rs = pstmt.executeQuery();
			if( rs.next() ){
				result = new Member();
				
				if(rs.getString("password").equals(member.getPassword() )){
					result.setId(rs.getString("id"));
					result.setName(rs.getString("name"));
					result.setPassword(rs.getString("password"));
					return result;
				}else{
					return null;
				}
				
			}else{
				return null;
			}
			
		} catch(SQLException e){
			e.printStackTrace();
			return null;
		} finally{
			try {
				if(rs != null){rs.close();}
				if(pstmt != null){pstmt.close();}
				if(conn != null){conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public MemberDao(){
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, password);
			if(conn != null){
				System.out.println("����");
			}else{
				System.out.println("MemberDao : ���� ����");
			}
		} catch (ClassNotFoundException e) {
			System.out.println("Ŭ���� �߰� �ȵſ�");
			e.printStackTrace();
		} catch (SQLException e){
			System.out.println("SQL ����");
			e.printStackTrace();
		}
	}
}
