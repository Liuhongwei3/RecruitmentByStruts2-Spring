package company.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.TypeCont;
import obj.domain.category;

@Component
public class JobType extends ActionSupport{
	
	private List<category> firstlist;
	private List<category> secondlist;
	private Map<String, List<String>> maplist;

	public Map<String, List<String>> getMaplist() {
		return maplist;
	}

	public void setMaplist(Map<String, List<String>> maplist) {
		this.maplist = maplist;
	}

	public void setFirstlist(List<category> firstlist) {
		this.firstlist = firstlist;
	}

	public List<category> getFirstlist() {
		return firstlist;
	}

	public void setSecondlist(List<category> secondlist) {
		this.secondlist = secondlist;
	}
	
	public List<category> getSecondlist() {
		return secondlist;
	}
	
	public String searchCategory() {
		Cont search = new TypeCont();
		this.secondlist = search.getAllDB();
		TypeCont type = new TypeCont();
		this.firstlist = type.getFirstType();
//		System.out.print(this.firstlist);
		this.maplist = new HashMap<String, List<String>>();
		for(int i=0; i<this.secondlist.size(); i++) {
			List<String> second = new ArrayList<String>();
			maplist.put(this.secondlist.get(i).getFirst(), second);
//			System.out.println(this.maplist.get(this.secondlist.get(i).getFirst()));
		}
		Set<String> keys = this.maplist.keySet();
		for(String key: keys) {
			for(int i = 0; i<this.secondlist.size(); i++) {
				if(key==this.secondlist.get(i).getFirst()) {
					this.maplist.get(key).add(this.secondlist.get(i).getSecond());
				}
			}
		}
		ActionContext act = ActionContext.getContext();
		act.getSession().put("maplist", this.maplist);
		act.getSession().put("secondlist", this.secondlist);
		return "success";
	}
	
	public String secondlist() {
		return "success";
	}

}
