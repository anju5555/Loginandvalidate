import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class DBConnection 
{
	public boolean verify(String user,String pass)
	{
		boolean flag=false;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/tecomp","root","root");  
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from login"); 
			while(rs.next())
			{
				String Dname= rs.getString("username");
				String Dpass=rs.getString("password");
				if(user.equals(Dname) && pass.equals(Dpass))
				{
					flag=true;
					break;
				}
			}
			con.close();  
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}  
		if(flag==true)
		return true;
		else
		return false;
		}	
}
