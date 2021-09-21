package metiers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ConnexionLA {
	  // Connection vers la base
    private static Connection cnx;
    
	public ConnexionLA() {
				try {
				Class.forName("com.mysql.jdbc.Driver");
			    System.out.println("driver sava sava!");

				cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/lai","root","");
			    System.out.println("connnexion sava!");
			}catch(Exception e) {e.getMessage();}

	}
			
			
			
		

		public boolean isConnected() {
			
	       return cnx!=null;

		    }


		
		public Connection getCnx() {
			return cnx;
		}
		

		





	public List<Matiere> showPlanEtude(){
		Matiere m=null;
		 // Connection cnx=null;
		 	//Statement st=null;
		 	 //rst=null;
		
		 List<Matiere> list=new ArrayList<Matiere>();
			try{
		Statement st=cnx.createStatement();
	     ResultSet rst=st.executeQuery("select * from matiere m,semestre s where (m.id_matiere=s.id_matiere)");
		String nom=rst.getString("nom_matiere");
		int cours=rst.getInt("cours");
		int td=rst.getInt("td");
		int tp=rst.getInt("tp");
		int ci=rst.getInt("ci");
		int credit=rst.getInt("CREDIT_ECUE");
		int coef=rst.getInt("COEF_ECUE");
		String controle=rst.getString("CONTROLE CONTINU");
		String regime=rst.getString("REGIME MIXTE");
		
		System.out.println(nom);
		m.setNom(nom);
		m.setCours(cours);
		m.setTd(td);
		m.setTp(tp);
		m.setCi(ci);
		m.setCreadit(credit);
		m.setCoef(coef);
		m.setControle(controle);
		m.setRegime(regime);
		list.add(m);
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
		

	}
	}
 
