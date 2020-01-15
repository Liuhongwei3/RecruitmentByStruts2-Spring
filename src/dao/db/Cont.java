package dao.db;


import java.util.List;

public interface Cont {
	public Object getOne(String sql,String[] str);
	public List getAllDB();
	public int update(String sql,String[] str);
//	public int delete(String sql,String[] str);
//	public int add(String sql,String[] str);
}
