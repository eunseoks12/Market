package DBPKG;

import java.sql.*;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TableDAO implements TableInterface{
	
	private DataSource datasource;
	
	public TableDAO() {
		try {
			Context context = new InitialContext();
			datasource = (DataSource)context.lookup("java:comp/env/jdbc/myoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int userLogin(String id, String pw) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String user_id = null;
		int result = 0;
		
		try {
			con = datasource.getConnection();
			pstmt = con.prepareStatement(Login);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				user_id = rs.getString("id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(user_id != null) result = 1;
		else result = 0;
		
		return result;
	}

	@Override
	public int userRegister(String id, String pw, String name, String phone, String email, String postcode,
			String address, String user_type) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			con = datasource.getConnection();
			pstmt = con.prepareStatement(Register);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, phone);
			pstmt.setString(5, email);
			pstmt.setString(6, postcode);
			pstmt.setString(7, address);
			pstmt.setString(8, user_type);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public ArrayList<goodsTableDTO> goodsSearch(String search) {
		ArrayList<goodsTableDTO> list = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = datasource.getConnection();
			pstmt = con.prepareStatement(Search);
			search += "%";
			pstmt.setString(1, search);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String goodsid = rs.getString("goodsid");
				String goodsname = rs.getString("goodsname");
				int goodsprice = rs.getInt("goodsprice");
				String category = rs.getString("category");
				String goodscomment = rs.getString("goodscomment");
				
				goodsTableDTO dto = new goodsTableDTO(goodsid, goodsname, goodsprice, category, goodscomment);
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public int userDelete(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			con = datasource.getConnection();
			pstmt = con.prepareStatement(UserDelete);
			pstmt.setString(1, id);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public int productBuy(String orderid, String id, String goodsid, int goodscount, int totalprice) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			con = datasource.getConnection();
			pstmt = con.prepareStatement(Buy);
			pstmt.setString(1, orderid);
			pstmt.setString(2, id);
			pstmt.setString(3, goodsid);
			pstmt.setInt(4, goodscount);
			pstmt.setInt(5, totalprice);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
