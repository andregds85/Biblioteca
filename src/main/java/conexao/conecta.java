package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conecta {

	public static Connection getConexao() throws SQLException{
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			return DriverManager.getConnection("jdbc:mysql://localhost/biblioteca", "root", "");

		
		}catch(ClassNotFoundException e){
		
			throw new SQLException(e.getException());
		}

	}	
	
}
