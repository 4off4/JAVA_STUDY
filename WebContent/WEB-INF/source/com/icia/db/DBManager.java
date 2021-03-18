/**
 * 
 */
package com.icia.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author JYLIM
 *
 */
public final class DBManager 
{
	private DBManager() {}

	public static Connection getConnection(String driver, String url, String id, String pwd)
	{
		Connection conn = null;
		
		try 
		{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pwd);
		} 
		catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static void close(ResultSet rs)
	{
		close(rs, null, null);
	}
	
	public static void close(PreparedStatement pstmt)
	{
		close(null, pstmt, null);
	}
	
	public static void close(Connection conn)
	{
		close(null, null, conn);
	}
	
	public static void close(ResultSet rs, PreparedStatement pstmt)
	{
		close(rs, pstmt, null);
	}
	
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn)
	{
		if(rs != null)
		{
			try 
			{
				rs.close();
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(pstmt != null)
		{
			try 
			{
				pstmt.close();
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(conn != null)
		{
			try 
			{
				conn.close();
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void setAutoCommit(Connection conn, boolean bFlag)
	{
		if(conn != null)
		{
			try 
			{
				conn.setAutoCommit(bFlag);
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void commit(Connection conn)
	{
		if(conn != null)
		{
			try 
			{
				conn.commit();
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void rollback(Connection conn)
	{
		if(conn != null)
		{
			try 
			{
				conn.rollback();
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
