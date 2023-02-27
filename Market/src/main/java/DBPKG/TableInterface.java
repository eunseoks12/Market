package DBPKG;

import java.util.ArrayList;

public interface TableInterface{

	final String Login = "SELECT * FROM user_tbl where id = ? AND pw = ?";
	final String Register = "INSERT INTO user_tbl(id, pw, name, phone, email, postcode, address, user_type) VALUES(?,?,?,?,?,?,?,?)";
	final String Search = "SELECT * FROM goods_tbl WHERE LOWER(goodsname) LIKE LOWER(?)";
	final String UserDelete = "DELETE FROM user_tbl where id = ?";
	final String Buy = "INSERT INTO order_tbl(orderid, id, goodsid, goodscount, totalprice) VALUES(?,?,?,?,?)";
	
	abstract int userLogin(String id, String pw);
	abstract int userRegister(String id, String pw, String name, String phone, String email, String postcode, String address, String user_type);
	abstract ArrayList<goodsTableDTO> goodsSearch(String search);
	abstract int userDelete(String id);
	abstract int productBuy(String orderid, String id, String goodsid, int goodscount, int totalprice);
}
