package obj.domain;

/**
 * 
 * @author admin
 *
 * ����������һ����ҵ����һ����������
 * ��ҵ����һ��ְλ��Ҫ����
 * ְλ���ƣ� ְλ�����ص㣬ְλ������ְλ��飬�������ڣ���Ч���ڣ���˾���ƣ��������飬 ְλ���
 * ���� String to Date
 *
 */

public class work {
	
	private int id; // �Զ�
	private String work;
	private String location;
	private int low; // ����
	private int high; // ����
	private String profile;
	private String jobtime;
	//private int effective;   // ��Ч����
	private String company;
	private String experience; // ��������
	private String type; //ְλ��𣬸ù����������ĸ��������������ѡ��
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

	public int getLow() {
		return low;
	}
	public void setLow(int low) {
		this.low = low;
	}
	public int getHigh() {
		return high;
	}
	public void setHigh(int high) {
		this.high = high;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
	
	public String getJobtime() {
		return jobtime;
	}
	public void setJobtime(String jobtime) {
		this.jobtime = jobtime;
	}
//	public int getEffective() {
//		return effective;
//	}
//	public void setEffective(int effective) {
//		this.effective = effective;
//	}
		
}