package metiers;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnexionEns {
	  private static Connection cnx;
	    


	  
		
		public ConnexionEns() {
			
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				//  System.out.println("driver sava sava!");
				 
				    cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb?zeroDateTimeBehavior=convertToNull&autoReconnect=true&characterEncoding=UTF-8&characterSetResults=UTF-8","root","");
				  	// System.out.println(ma.getNom_matiere() +" a été  affectée à "+ma.getNom_enseignant());
				    
			}catch(Exception e) {e.getMessage();} }
		public boolean isConnected() {
			
	       return cnx!=null;

		    }


		
		public Connection getCnx() {
			return cnx;
		}
		

}
