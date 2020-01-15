package util.db;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DBUtils {
	public static ComboPooledDataSource dataSource = new ComboPooledDataSource();
	
	/**
	 * 获得数据源(连接池)
	 * 
	 * @return
	 */
	public static DataSource getDataSource() {
		return dataSource;
	}

	/**
	 *获得连接
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		// 将从连接池中获得连接
		return dataSource.getConnection();
	}

}
