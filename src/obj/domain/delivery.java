package obj.domain;

/**
 * 
 * @author dreams
 * 
 * Ͷ�ݵļ���
 * ����id��user id��Ͷ��ʱ�䣬Ͷ�ݹ�˾��ְλ
 * 
 */

public class delivery {

	private int bio_id;
	private int user_id;
	private String company;
	private String date;
	public int getBio_id() {
		return bio_id;
	}
	public void setBio_id(int bio_id) {
		this.bio_id = bio_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
