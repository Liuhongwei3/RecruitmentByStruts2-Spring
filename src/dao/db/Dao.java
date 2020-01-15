package dao.db;

import java.sql.ResultSet;

public interface Dao {

	public ResultSet Search(String sql, String str[]);

	public int update(String sql, String str[]);
}
