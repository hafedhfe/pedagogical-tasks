package prob;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MatierePdf {
	
	public MatierePdf() {
		// TODO Auto-generated constructor stub
		
		  String req5="select * from matiereAffectee;";
 
			    Connection cnx1=null;
			    try {
					Class.forName("com.mysql.jdbc.Driver");
				
			//  System.out.println("driver sava sava!");


			cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb?zeroDateTimeBehavior=convertToNull&autoReconnect=true&characterEncoding=UTF-8&characterSetResults=UTF-8","root","");

			    
			    Statement  st=cnx1.createStatement();
			  ResultSet	rst=st.executeQuery(req5);
				while(rst.next()){ 
					float td=rst.getFloat("td");
				    	float cours=rst.getFloat("cours");          
				    	String filiere=rst.getString("filiere");
				    	float niveau=rst.getInt("niveau");
				    	String nom_enseignant=rst.getString("nom_enseignant");
				    	String specialite=rst.getString("specialite");
				    	String grade=rst.getString("grade");
				    	String matiere=rst.getString("nom_matiere"); 
				 
		StringBuilder sb = new StringBuilder();
		sb.append("<table border=\"2\">");
		sb.append("<tr>");
		sb.append("<th>"+nom_enseignant+"</th>");
		sb.append("<th>"+ +"</th>");
		sb.append("<th>Number Data</th>");
		sb.append("</tr>");
		for (int i = 0; i < 10; ) {
		    i++;
		    sb.append("<tr>");
		    sb.append("<td>");
		    sb.append(i);
		    sb.append("</td>");
		    sb.append("</tr>");
		}
		sb.append("</table>");
				}} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			    
	}
	
	
	

}
