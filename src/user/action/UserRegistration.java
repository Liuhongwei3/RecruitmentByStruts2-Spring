package user.action;

import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

import obj.domain.*;
import obj.cont.impl.*;
import dao.db.Cont;

@Component
public class UserRegistration extends ActionSupport {

	private user user;
	private String repass;

	public String getRepass() {
		return repass;
	}

	public void setRepass(String repass) {
		this.repass = repass;
	}

	public user getUser() {
		return user;
	}

	public void setUser(user user) {
		this.user = user;
	}

	@Override
	public String execute() {
		String message = "input";	
		Cont adduser = new UsersCont();
		String sql = "insert into users(username, password, email) values(?,?,?)";
		String[] args = { user.getUsername(), user.getPassword(), user.getEmail() };
		int status = adduser.update(sql, args);
		if (status > 0) {
			message = "success";
		}

		return message;

	}
}
