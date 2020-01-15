package user.action;

import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Component
public class Logout extends ActionSupport{

	@Override
	public String execute(){
		
		ActionContext act = ActionContext.getContext();
		act.getSession().remove("username");
		act.getSession().remove("role");
		
		return "success";
	}
}
