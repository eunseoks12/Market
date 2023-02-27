package DBPKG;

public class orderTableDTO {

	private String orderid;
	private String id;
	private String goodsid;
	private int goodscount;
	private int totalprice;
	
	public orderTableDTO(String orderid, String id, String goodsid, int goodscount, int totalprice) {
		super();
		this.orderid = orderid;
		this.id = id;
		this.goodsid = goodsid;
		this.goodscount = goodscount;
		this.totalprice = totalprice;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}

	public int getGoodscount() {
		return goodscount;
	}

	public void setGoodscount(int goodscount) {
		this.goodscount = goodscount;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	
	
}
