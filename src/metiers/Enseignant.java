package metiers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import prob.MatiereAffectee;

public class Enseignant {
private String nom;
private String adresse;
private String email;
private String grade;
private String password;
private String tell;
public Enseignant(String nom) {
	super();
	this.nom = nom;
}





private  Date daterec;
// private float due;
 
 
 public void setDue(double duee,Connection cnx,String nome) {
	 //Connection cnx =null;
	 PreparedStatement stmt=null;
 	 	String requetDue="update due set due=due+? where nom_enseignant=?;";
		try {
	 		stmt=cnx.prepareStatement(requetDue); 
	 		stmt.setDouble(1, duee);
  	 	    stmt.setString(2,nome);
		    int y=stmt.executeUpdate();			 
 System.out.println("nom:"+nome);
		}catch(Exception e) {e.printStackTrace();}
	 
	 
 }
public Enseignant(String nom,   String grade,  Date daterec) {
	super();
	this.nom = nom;
	this.email = email;
	this.grade = grade;
	this.tell = tell;
	this.daterec = daterec;
}
public float getdue(String nomx,Connection cnx) {
	 
		float dueEns = 0;
 	String requetDue="select due from due  where nom_enseignant=? ;";
	try {	
		 
	PreparedStatement stmt=cnx.prepareStatement(requetDue); 
	stmt.setString(1,nomx);
			ResultSet rsdue=stmt.executeQuery(); 
			
			while(rsdue.next()){  
				String due=rsdue.getString("due");
				 dueEns=Float.parseFloat(due);
		System.out.println(" ----"+dueEns);  
			}

	}catch(Exception e) {e.printStackTrace();}
	return dueEns;
	
}





public  Date getDaterec() {
	return daterec;
}

public void setDaterec( Date daterec) {
	this.daterec = daterec;
}


public String getTell() {
	return tell;
}

public void setTell(String tell) {
	this.tell = tell;
}

	public String getNom() {
	return nom;
}

public void setNom(String nom) {
	this.nom = nom;
}

public String getAdresse() {
	return adresse;
}

public void setAdresse(String adresse) {
	this.adresse = adresse;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getGrade() {
	return grade;
}

public void setGrade(String grade) {
	this.grade = grade;
}

public String getPaswword() {
	return password;
}

public void setPaswword(String paswword) {
	this.password = paswword;
}

	public Enseignant() {
		// TODO Auto-generated constructor stub
	}

	public String calculePassword() {
		String debutNom,debutAdresse,debutemail, fingrade,  debutTell;
		int longGrade;
		debutNom=nom.substring(0,2);
		debutTell=tell.substring(0,2);
		debutAdresse=adresse.substring(0,2);
 		debutemail=email.substring(0,2);
		longGrade=grade.length();
		fingrade=grade.substring(longGrade-2, longGrade);	
		return debutNom+debutAdresse+debutemail+fingrade;
		 

	}

	
	
	

	 public void insertIntoMatiereAffectee( Connection cnx,String nom_enseignant,String nom_matiere,float cours,float td) {
		 Statement st=null;
		 String reqInsert="INSERT INTO matiereaffectee (nom_enseignant, nom_matiere, chargecours, chargetd, chargetp) VALUES ('"+nom_enseignant+"','"+nom_matiere+"', '"+cours+"', '"+td+"', '"+td*2+"');";	
		 try {
			st=cnx.createStatement();
			int y= st.executeUpdate(reqInsert);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		 
		 
	 }
	}
	
	
	
	


