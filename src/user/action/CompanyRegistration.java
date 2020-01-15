package user.action;

import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.CompanyCont;
import obj.domain.*;

@Component
public class CompanyRegistration extends ActionSupport {

	private company company;
	private String repass;
	public company getCompany() {
		return company;
	}
	public void setCompany(company company) {
		this.company = company;
	}
	public String getRepass() {
		return repass;
	}
	public void setRepass(String repass) {
		this.repass = repass;
	}
	
	@Override
	public String execute() {
		String message="input";
		Cont addcompany = new CompanyCont();
		String sql = "insert into company(company_name, username, password, email, location) values(?,?,?,?,?)";
		String[] args = { 
				company.getCompany_name(),
				company.getUsername(),
				company.getPassword(),
				company.getEmail(),
				company.getLocation()
		};
		int status = addcompany.update(sql, args);
		if (status > 0) {
			message = "success";
		}

		return message;
	}
}
