package obj.domain;

/**
 * 
 * @author admin
 * 
 * �����ʾ��ҵ��ӦƸ�߻ظ�����Ϣ��
 * ����id����˾��ӦƸ�ߣ�����������Ϣ����
 * 
 */

public class message {
	
	private int id;
	private String company;
	private int bio_id;
	private String message;
	private int userid;
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getBio_id() {
		return bio_id;
	}
	public void setBio_id(int bio_id) {
		this.bio_id = bio_id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}