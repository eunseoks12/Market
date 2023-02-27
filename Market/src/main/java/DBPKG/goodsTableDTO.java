package DBPKG;

public class goodsTableDTO {

	private String goodsid;
	private String goodsname;
	private int goodsprice;
	private String category;
	private String goodscomment;
	
	public goodsTableDTO(String goodsid, String goodsname, int goodsprice, String category, String goodscomment) {
		super();
		this.goodsid = goodsid;
		this.goodsname = goodsname;
		this.goodsprice = goodsprice;
		this.category = category;
		this.goodscomment = goodscomment;
	}

	public String getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public int getGoodsprice() {
		return goodsprice;
	}

	public void setGoodsprice(int goodsprice) {
		this.goodsprice = goodsprice;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getGoodscomment() {
		return goodscomment;
	}

	public void setGoodscomment(String goodscomment) {
		this.goodscomment = goodscomment;
	}
	
	
	
}
