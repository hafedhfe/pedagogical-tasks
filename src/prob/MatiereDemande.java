/*package prob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import metiers.ConnexionEns;
import metiers.Enseignant;

public class MatiereDemande {
	private String matiereDemandee;
	private String filiere;
	private float niveau;
	private float cours;
	private float td;
	private List<Enseignant> lst;
	
	
	
	
	public List<Enseignant> getListe(String MatiereDemande) throws SQLException {
		Connection cnx1=null;
	    //List<Enseignant> lst=null;
		Statement  st1=null;
		ResultSet  rst1=null;
String req="select * from matiere m ,fichedevoeux f,matiere m2 ,enseignants e where f.id_matiere=m.id_matiere and f.nom_enseignant=m.id_enseignant and m.id_matiere=m2.id_matiere and m.id_enseignant<>m2.id_enseignant  and m.id_enseignant=e.nom and m.nom_matiere='"+MatiereDemande+"';";
		try {
	lst=new ArrayList<Enseignant>();
	cnx1=new ConnexionEns().getCnx();  
    
    st1=cnx1.createStatement();
    rst1=st1.executeQuery(req);
    int i=0;
    while(rst1.next()){     
    	 Enseignant e=null;
   	  
 
 
   	 
   	String nom_enseignant=rst1.getString("nom_enseignant");
   	String specialite=rst1.getString("specialite");
   	String grade=rst1.getString("grade");
   	 Date daterec=rst1.getDate("daterec");
   	String email=rst1.getString("email");
   	String tel=rst1.getString("tel");
    
  	e=new Enseignant(nom_enseignant,email,grade,tel,daterec);
   	 lst.add(e);
   	//System.out.println(lst.size());
   //	System.out.println(" enseignant qui demande la matiere "+matiereDemandee+" est"+lst.get(i).getNom());
   	 i++;
    }

    return lst;
	}catch (Exception e) {
		cnx1.close();
		 return null;
	}finally{
		cnx1.close();
		 
	}
	}

	public void setListe(List<Enseignant> liste) {
		this.lst = liste;
	}

	public MatiereDemande() {
		// TODO Auto-generated constructor stub
	}

	public String getMatiereDemandee() {
		return matiereDemandee;
	}
	public void setMatiereDemandee(String matiereDemandee) {
		this.matiereDemandee = matiereDemandee;
	}
	public String getFiliere() {
		return filiere;
	}
	public void setFiliere(String filiere) {
		this.filiere = filiere;
	}
	public float getNiveau() {
		return niveau;
	}
	public void setNiveau(float niveau) {
		this.niveau = niveau;
	}
	public float getCours() {
		return cours;
	}
	public void setCours(float cours) {
		this.cours = cours;
	}
	public float getTd() {
		return td;
	}
	public void setTd(float td) {
		this.td = td;
	}
	
	public void suppMatiereAffectée(String id) {
		
		Connection cnx1=null;
		Statement stdel2=null,stdel=null;
		try {
		 cnx1=new ConnexionEns().getCnx();
			String reqdel="delete from fichedevoeux where id_matiere='"+id+"';";	 
		    String reqde2="delete from matiere where id_matiere='"+id+"';";	 
		    stdel=cnx1.createStatement();
			int y= stdel.executeUpdate(reqdel);
			stdel2=cnx1.createStatement();
			int y1= stdel.executeUpdate(reqde2);
			
 		}catch (Exception e) {
 			 e.printStackTrace();
		}
	}
	
	
public void resoudreConflit(List<Enseignant> lst,String id ) throws SQLException {
lst=getListe(matiereDemandee);
int indice=0;
	int x=0;
	MatiereAffectee ma=new MatiereAffectee();
	Connection cnx1=null;
	Statement stinsert=null,stdel=null;
	PreparedStatement stmt=null;
	
	cnx1=new ConnexionEns().getCnx();
	
	// String requetDue="select due from enseignant where email=? ;";
	//  String reqInsert="INSERT INTO matiereaffectee (nom_enseignant, nom_matiere, chargecours, chargetd, chargetp) VALUES ('"+ma.getNom_enseignant()+"','"+ma.getNom_matiere()+"', '"+ma.getCours()+"', '"+ma.getTd()+"', '"+ma.getTd()*2+"');";	
	 
 
/*while(x<lst.size()) {
  
 
 if(lst.get(x).getGrade().equals(lst.get(x+1).getGrade())){
		System.out.println("meme grade");
	 
		if(((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)>6))&&((lst.get(x+1).getdue(lst.get(x+1).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)>6))) {
			System.out.println("aucune matiere est affectée");
			
			
		}
		
		
		else if(((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)<6))&&((lst.get(x+1).getdue(lst.get(x+1).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)>6))) {
			System.out.println(" matiere est affectée à "+lst.get(x).getNom());
			indice=x;
			lst.get(x).setDue(this.getCours(), cnx1, ma.getNom_enseignant());
			
		}
		else   if(((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)<6))&&((lst.get(x+1).getdue(lst.get(x+1).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)<6))) 
		{
			System.out.println("selon date de recrutement ----");
			   if(lst.get(x).getDaterec().before((lst.get(x+1).getDaterec()))) {
				 System.out.println("selon date de recrutement -- cet matiere etait affecté à "+lst.get(x).getNom());
				 indice=x;                        	
					lst.get(x).setDue(this.getCours(), cnx1, ma.getNom_enseignant());
}
			
				 else  if(lst.get(x).getDaterec().after((lst.get(x+1).getDaterec()))) {
					 System.out.println("selon date deeee recrutement -- cet matiere etait affecté à "+lst.get(x+1).getNom());
					 indice=x+1;   
						lst.get(x+1).setDue(this.getCours(), cnx1, ma.getNom_enseignant());
} 
				 else {
					 System.out.println("to negociation ");
					 }
	    }
		}
		 

 
//___________________________________________________________________________________________

      else if(!(lst.get(x).getGrade().equals( lst.get(x+1).getGrade())))	{
	   
 	   if((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()<6)&&((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()<6)))
	     {
		  if((lst.get(x).getGrade().equals("prof"))&&((lst.get(x+1).getGrade().equals("Assistant"))||(lst.get(x+1).getGrade().equals("Maitre de conférences"))||(lst.get(x+1).getGrade().equals("Maitre assistant")))) 
		  {
			  System.out.println("selon due matiere sera affectée à "+lst.get(x).getNom());
			  indice=x;
		  }
		  else if((lst.get(x+1).getGrade().equals("prof"))&&((lst.get(x).getGrade().equals("Assistant"))||(lst.get(x).getGrade().equals("Maitre de conférences"))||(lst.get(x).getGrade().equals("Maitre assistant")))) 
		  {
			  System.out.println("selon due matiere sera affectée à "+lst.get(x).getNom());
			  indice=x;
		  }
		  
		  else if((lst.get(x).getGrade().equals("Maitre de conférences"))&&((lst.get(x+1).getGrade().equals("Assistant"))||(lst.get(x+1).getGrade().equals("Maitre assistant")))) 
		  {
			  System.out.println("selon due matiere sera affectée à "+lst.get(x).getNom());
			  indice=x;
		  }
		  else if ((lst.get(x+1).getGrade().equals("Maitre de conférences"))&&((lst.get(x).getGrade().equals("Assistant"))||(lst.get(x).getGrade().equals("Maitre assistant")))) 
		  { 
			  System.out.println("selon due matiere sera affectée à "+lst.get(x+1).getNom());
			  indice=x+1;

		 }
		  
		  else if ((lst.get(x).getGrade().equals("Assistant"))&&(lst.get(x+1).getGrade().equals("Maitre assistant")))
		  { 
			  System.out.println("selon due matiere sera affectée à "+lst.get(x+1).getNom());
			  indice=x+1;

		 }
		  else if ((lst.get(x+1).getGrade().equals("Assistant"))&&(lst.get(x).getGrade().equals("Maitre assistant")))
		  { 
			  System.out.println("selon due matiere sera affectée à "+lst.get(x).getNom());
			  indice=x;

		 }
		  
	   }
 	   
 	   //______________________________________________________________________________________________________________________________________________________________________________
 	   
 	   else  if((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()<6)&&((lst.get(x+1).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()>6)))
	     {
		 
		  System.out.println("selon due <-->  matiere affectée à "+lst.get(x).getNom());
		  indice=x;
	     }
 	   
 //______________________________________________________________________________________________________________________________________________________________________________
 	   
 	   else  if((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()>6)&&((lst.get(x+1).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()<6)))
	     {
		 
		  System.out.println("selon due <-->  matiere affectée à "+lst.get(x+1).getNom());
		  indice=x+1;
	     }
 	   
      
 	   else
 		   {
 		   System.out.println("aucun de ces enseignants se benefiçent de cette matiere");
 		   }
 	   
      }

 System.out.println("  cette matiere "+matiereDemandee);

						ma.setNom_matiere(matiereDemandee);
						  System.out.println("  cette matiere "+ma.getNom_enseignant());

						ma.setNom_enseignant(lst.get(indice).getNom());
						ma.setCours(cours);
						ma.setTd(td);
						ma.setTp(td*2);
					  String reqdel="delete from fichedevoeux where id_matiere='"+id +"' and  nom_enseignant='"+ma.getNom_enseignant()+"';";	 
					String reqInsert="INSERT INTO matiereaffectee (nom_enseignant, nom_matiere, chargecours, chargetd, chargetp) VALUES ('"+ma.getNom_enseignant()+"','"+ma.getNom_matiere()+"', '"+ma.getCours()+"', '"+ma.getTd()+"', '"+ma.getTd()*2+"');";	
					String req2="select * from matiereaffectee where nom_enseignant=? and nom_matiere=?; ";
					PreparedStatement verif=cnx1.prepareStatement(req2);
					verif.setString(1, ma.getNom_enseignant());
					verif.setString(2, ma.getNom_matiere());
					ResultSet stverif=null;
					 stverif=verif.executeQuery();
					 int k=0;
					 while (stverif.next()) {
						k++;
					}
					 int v=0;
					 if(k==0) {
						 stinsert = cnx1.createStatement();
						   v= stinsert.executeUpdate(reqInsert);	
						   if(v!=0){
							   stdel=cnx1.createStatement();
							   int y= stdel.executeUpdate(reqdel);
							   }
					
						 System.out.println("not existe");
					 			}
				 else {
					 System.out.println("deja existe");
					 
				 	}
 
//System.out.println("taille list avant remove "+lst.size());

//lst.clear();
//System.out.println("taille list apres remove "+lst.size());


// System.out.println("REMOVE ENSEIGNANT :  "+lst.get(indice).getNom());
//System.out.println("taille list avant remove "+lst.size());
//System.out.println("indice avant est :"+indice);
//lst.remove(lst.get(indice));
//System.out.println("indice apres est :"+indice);
indice=0;
//System.out.println("taille list après remove "+lst.size());
x=indice;
 

  
    	  
    		
    		 
}//fin while

	while(x<lst.size()-1) {
		
		String grad=lst.get(x).getGrade();
		System.out.println(matiereDemandee+"*************************"+grad);

		if((lst.get(x).getGrade().equals( lst.get(x+1).getGrade() ))){
				 if(lst.get(x).getDaterec().before((lst.get(x+1).getDaterec()))){
		 			 System.out.println("cet matiere etait affecté à "+lst.get(x).getNom());
		 
		 			 indice=x;}
		 		 else {
		 			 System.out.println("cet matiere etait affecté à "+lst.get(x+1).getNom());
		 			indice=x+1;}}

		//___________________________________________________________________________________________

		else if(!(lst.get(x).getGrade().equals( lst.get(x+1).getGrade())))	{
			      if((lst.get(x).getGrade().equals("Maitre de Conférences")&&((lst.get(x+1).getGrade().equals(" Maitre Assitant"))||(lst.get(x+1).getGrade().equals("Assitant")))||(lst.get(x+1).getGrade().equals("prof"))))
			      {
				     indice=x;
				     System.out.println("cet matiere etait affecté à "+lst.get(x).getNom());

			        }
			        if((lst.get(x).getGrade().equals("Maitre Assitant")&&((lst.get(x+1).getGrade().equals("Assitant")))||(lst.get(x+1).getGrade().equals("prof"))))
			       {
				     indice=x;
				     System.out.println("cet matiere etait affecté à "+lst.get(x).getNom());

			        }
			       if(lst.get(x).getGrade().equals("Assitant")&&(lst.get(x+1).getGrade().equals("prof"))){
				     indice=x;
				     System.out.println("cet matiere etait affecté à "+lst.get(x).getNom());

			        }
			
			       if(lst.get(x).getDaterec().before((lst.get(x+1).getDaterec()))){
				     System.out.println("cet matiere etait affecté à "+lst.get(x).getNom());
				     indice=x;
				    
			        } 
			      else {
				     System.out.println("cet matiere etait affecté à "+lst.get(x+1).getNom());
				    indice=x+1;}


		          }
		stinsert = cnx1.createStatement();
	/*	int v= stinsert.executeUpdate(reqInsert);
		if(v!=0){
			 stdel=cnx1.createStatement();
			int y= stdel.executeUpdate(reqdel);
			System.out.println("y"+y);
		}
	}

cnx1.close();    
    	    

}//fin methode



}//fin class
 
  
*/

 
package prob;   

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import metiers.Enseignant;

public class MatiereDemande {
	private String matiereDemandee;
	private String filiere;
	private float niveau;
	private float cours;
	private float td;
	private List<Enseignant> lst;
	
	
 
	
	public List<Enseignant> getListe(String MatiereDemande) throws SQLException {
		Connection cnx1=null;
	    //List<Enseignant> lst=null;
		Statement  st1=null;
		ResultSet  rst1=null;
String req="select f.nom_enseignant,f.specialite,f.grade,e.daterec from fichedevoeux f ,enseignants e where f.nom_enseignant=e.nom and f.nom_matiere='"+MatiereDemande+"';";
		try {
	lst=new ArrayList<Enseignant>();
	Class.forName("com.mysql.jdbc.Driver");
 //System.out.println("driver All Prof sava!");
 
    cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb?zeroDateTimeBehavior=convertToNull&autoReconnect=true&characterEncoding=UTF-8&characterSetResults=UTF-8","root","");
   // System.out.println("connnexion base de donnée enseignant sava!   : getAllProf");
     
    
    st1=cnx1.createStatement();
    rst1=st1.executeQuery(req);
    int i=0;
    while(rst1.next()){     
    	 Enseignant e=null;
   	  
 
 
   	 
   	String nom_enseignant=rst1.getString("nom_enseignant");
   	String specialite=rst1.getString("specialite");
   	String grade=rst1.getString("grade");
   	 Date daterec=rst1.getDate("daterec");
  
    
  	e=new Enseignant(nom_enseignant,grade,daterec);
   	 lst.add(e);
   	//System.out.println(lst.size());
   //	System.out.println(" enseignant qui demande la matiere "+matiereDemandee+" est"+lst.get(i).getNom());
   	 i++;
    }

    return lst;
	}catch (Exception e) {
		cnx1.close();
		 return null;
	}finally{
		cnx1.close();
		 
	}
	}

	public void setListe(List<Enseignant> liste) {
		this.lst = liste;
	}

	public MatiereDemande() {
		// TODO Auto-generated constructor stub
	}

	public String getMatiereDemandee() {
		return matiereDemandee;
	}
	public void setMatiereDemandee(String matiereDemandee) {
		this.matiereDemandee = matiereDemandee;
	}
	public String getFiliere() {
		return filiere;
	}
	public void setFiliere(String filiere) {
		this.filiere = filiere;
	}
	public float getNiveau() {
		return niveau;
	}
	public void setNiveau(float niveau) {
		this.niveau = niveau;
	}
	public float getCours() {
		return cours;
	}
	public void setCours(float cours) {
		this.cours = cours;
	}
	public float getTd() {
		return td;
	}
	public void setTd(float td) {
		this.td = td;
	}
	
	public void suppMatiereAffectée(String id) {
		
		Connection cnx1=null;
		Statement stdel2=null,stdel=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		//  System.out.println("driver sava sava!");
		 
		    cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb?zeroDateTimeBehavior=convertToNull&autoReconnect=true&characterEncoding=UTF-8&characterSetResults=UTF-8","root","");
		  	// System.out.println(ma.getNom_matiere() +" a été  affectée à "+ma.getNom_enseignant());
		    String reqdel="delete from fichedevoeux where nom_matiere='"+id+"';";	 
		 //   String reqde2="delete from matiere where id_matiere='"+id+"';";	 
		    stdel=cnx1.createStatement();
			int y= stdel.executeUpdate(reqdel);
			stdel2=cnx1.createStatement();
		//	int y1= stdel.executeUpdate(reqde2);
			
 		}catch (Exception e) {
			// TODO: handle exception
			 e.printStackTrace();
		}
	}
	
	
public void resoudreConflit(List<Enseignant> lst ,String id) throws SQLException {
lst=getListe(matiereDemandee);
int indice=0;
	int x=0;

	MatiereAffectee ma=new MatiereAffectee();
	Connection cnx1=null;
	Statement stinsert=null,stdel=null;
	PreparedStatement stmt=null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	//  System.out.println("driver sava sava!");
	 
	    cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb?zeroDateTimeBehavior=convertToNull&autoReconnect=true&characterEncoding=UTF-8&characterSetResults=UTF-8","root","");
	  	// System.out.println(ma.getNom_matiere() +" a été  affectée à "+ma.getNom_enseignant());
	    ma.setNom_matiere(matiereDemandee);
		ma.setNom_enseignant(lst.get(x).getNom());
		ma.setCours(cours);
		ma.setTd(td);
		  String reqdel="delete from fichedevoeux where nom_matiere='"+id+"' and nom_enseignant='"+ma.getNom_enseignant()+"';";	 
		  // String requetDue="select due from enseignant where email=? ;";
		  String reqInsert="INSERT INTO `matiereaffectee` (`nom_enseignant`, `nom_matiere`, `chargecours`, `chargetd`, `chargetp`) VALUES ('"+ma.getNom_enseignant()+"','"+ma.getNom_matiere()+"', '"+ma.getCours()+"', '"+ma.getTd()+"', '"+ma.getTd()*2+"');";	
		 
		 // stmt=cnx1.prepareStatement(requetDue);

	while(x<lst.size()-1) {
		
String grad=lst.get(x).getGrade();
System.out.println(matiereDemandee+"**** " +ma.getNom_enseignant()+"****"+grad);
 
if(lst.get(x).getGrade().equals(lst.get(x+1).getGrade())){
	System.out.println("meme grade");
 
	if(((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)>6))&&((lst.get(x+1).getdue(lst.get(x+1).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)>6))) {
		System.out.println("aucune matiere est affectée");
		
		
	}
	
	
	else if(((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)<6))&&((lst.get(x+1).getdue(lst.get(x+1).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)>6))) {
		System.out.println(" matiere est affectée à "+lst.get(x).getNom());
		indice=x;
		lst.get(x).setDue(this.getCours(), cnx1, ma.getNom_enseignant());
		lst.get(x).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
		
	}
	else if(((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)<6))&&((lst.get(x+1).getdue(lst.get(x+1).getNom(),cnx1)+this.getCours()+(this.getTd()/1.83)<6))) 
	{
		System.out.println("selon date de recrutement ----");
		     if(lst.get(x).getDaterec().before((lst.get(x+1).getDaterec()))) {
			 System.out.println("selon date de recrutement -- cet matiere etait affecté à "+lst.get(x).getNom());
			 indice=x;                        	
				lst.get(x).setDue(this.getCours(), cnx1, ma.getNom_enseignant());
				lst.get(x).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
				
}
		
			 else  if(lst.get(x).getDaterec().after((lst.get(x+1).getDaterec()))) {
				 System.out.println("selon date de recrutement -- cet matiere etait affecté à "+lst.get(x+1).getNom());
				 indice=x+1;   
					lst.get(x+1).setDue(this.getCours(), cnx1, ma.getNom_enseignant());
					lst.get(x+1).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
					
			 } else {
				 System.out.println("meme grade , meme date de recruttement ---> negociation ");
				 }
    }
	}
	 


//___________________________________________________________________________________________

  else if(!(lst.get(x).getGrade().equals( lst.get(x+1).getGrade())))	{
   
	   if((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()<6)&&((lst.get(x+1).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()<6)))
     {
	  if((lst.get(x).getGrade().equals("prof"))&&((lst.get(x+1).getGrade().equals("Assistant"))||(lst.get(x+1).getGrade().equals("Maitre de Conferences"))||(lst.get(x+1).getGrade().equals("Maitre Assistant")))) 
	  {
		  System.out.println("prof x selon due matiere sera affectée à "+lst.get(x).getNom());
		  indice=x;
			lst.get(x).setDue(this.getCours(), cnx1, ma.getNom_enseignant());
			lst.get(x).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
			

	  }
	  else if((lst.get(x+1).getGrade().equals("prof"))&&((lst.get(x).getGrade().equals("Assistant"))||(lst.get(x).getGrade().equals("Maitre de Conferences"))||(lst.get(x).getGrade().equals("Maitre Assistant")))) 
	  {
		  System.out.println("prof x+1 selon due matiere sera affectée à "+lst.get(x+1).getNom());
		  indice=x;
			lst.get(x+1).setDue(this.getCours(), cnx1, ma.getNom_enseignant());
			lst.get(x+1).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
			

	  }
	  
	  else if((lst.get(x).getGrade().equals("Maitre de Conferences"))&&((lst.get(x+1).getGrade().equals("Assistant"))||(lst.get(x+1).getGrade().equals("Maitre Assistant")))) 
	  {
		  System.out.println("mc x selon due matiere sera affectée à "+lst.get(x).getNom());
		  indice=x;
			lst.get(x).setDue(this.getCours(), cnx1, lst.get(x).getNom());
			lst.get(x).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
			

	  }
	  else if ((lst.get(x+1).getGrade().equals("Maitre de Conferences"))&&((lst.get(x).getGrade().equals("Assistant"))||(lst.get(x).getGrade().equals("Maitre Assistant")))) 
	  { 
		  System.out.println("mc x+1 selon due matiere sera affectée à "+lst.get(x+1).getNom());
		  indice=x+1;
			lst.get(x+1).setDue(this.getCours(), cnx1, lst.get(x+1).getNom());
			lst.get(x+1).insertIntoMatiereAffectee(cnx1, lst.get(x+1).getNom(),matiereDemandee , cours, td);
			


	 }
	  
	  else if ((lst.get(x).getGrade().equals("Assistant"))&&(lst.get(x+1).getGrade().equals("Maitre Assistant")))
	  { 
		  System.out.println("ma x+1  selon due matiere sera affectée à "+lst.get(x+1).getNom());
		  indice=x+1;
			lst.get(x+1).setDue(this.getCours(), cnx1, lst.get(x+1).getNom());
			lst.get(x+1).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
			


	 }
	  else if ((lst.get(x+1).getGrade().equals("Assistant"))&&(lst.get(x).getGrade().equals("Maitre Assistant")))
	  { 
		  System.out.println("ma x selon due matiere sera affectée à "+lst.get(x).getNom());
		  indice=x;
			lst.get(x).setDue(this.getCours(), cnx1,lst.get(x).getNom());
			lst.get(x).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
			


	 }
	  
   }
	   
	   //______________________________________________________________________________________________________________________________________________________________________________
	   
	   else  if((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()<6)&&((lst.get(x+1).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()>6)))
     {
	 
	  System.out.println("selon due <-->  matiere affectée à "+lst.get(x).getNom());
	  indice=x;
		lst.get(x).setDue(this.getCours(), cnx1, lst.get(x).getNom());
		lst.get(x).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
		

     }
	   
//______________________________________________________________________________________________________________________________________________________________________________
	   
	   else  if((lst.get(x).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()>6)&&((lst.get(x+1).getdue(lst.get(x).getNom(),cnx1)+this.getCours()+this.getTd()<6)))
     {
	 
	  System.out.println("selon due <-->  matiere affectée à "+lst.get(x+1).getNom());
	  indice=x+1;
		lst.get(x+1).setDue(this.getCours(), cnx1, lst.get(x+1).getNom());
		lst.get(x+1).insertIntoMatiereAffectee(cnx1, lst.get(x).getNom(),matiereDemandee , cours, td);
		

     }
	   
  
	   else
		   {
		   System.out.println("aucun de ces enseignants se benefiçent de cette matiere");
		   }
	   
  }
 
 
	 stdel=cnx1.createStatement();
	int y= stdel.executeUpdate(reqdel);
	 

//lst.clear();;

//x=indice;
x++;
 
	}
 
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}finally{
	cnx1.close();
	 
}
  
}

public void insertMatiereAffectee(MatiereAffectee ma,Connection cnx1) {
	Statement stinsert=null;
	 
		  	  String reqInsert="INSERT INTO `matiereaffectee` (`nom_enseignant`, `nom_matiere`, `chargecours`, `chargetd`, `chargetp`) VALUES ('"+ma.getNom_enseignant()+"','"+ma.getNom_matiere()+"', '"+ ma.getCours()+"', '"+ma.getTd()+"', '"+ma.getTd()*2+"');";	
				 
			   	 try {
					stinsert = cnx1.createStatement();
					int v= stinsert.executeUpdate(reqInsert);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		         
					   		} 
	
	
	


public void deleteMatiereAffecteefromfiche(MatiereAffectee ma,Connection cnx1) {
	PreparedStatement stmtDelete=null;
	 
		  	String reqDelete="delete from fichedevoeux where nom_enseignant=? and nom_matiere=?";
			   	 try {
			   		stmtDelete = cnx1.prepareStatement(reqDelete);
			   		stmtDelete.setString(1, ma.getNom_enseignant());
			   		stmtDelete.setString(2, ma.getNom_matiere());
System.out.println("ddddddddddd"+ma.getNom_enseignant());
stmtDelete.execute();
 				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		         
					   		} 
	
	
	
}

























/*
 *  switch (grad) {
case "Maitre de Conférences" :if(lst.get(x+1).getGrade()=="Maitre de Conférences") {
	System.out.println("same grade Maitre De Conference, look for daterec ");
}else   {
	System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x).getNom());
} 
	
	break;
case "Maitre Assitant" :if(lst.get(x+1).getGrade()=="Maitre Assitant") {System.out.println("same grade Maitre Assistant , look for daterec ");
}
		else if(lst.get(x+1).getGrade()=="Maitre de Conférences") {
			System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x+1).getNom());

		}else if(lst.get(x+1).getGrade()=="Assitant") {
			System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x).getNom());

		}
		else if(lst.get(x+1).getGrade()=="Professeur") {
			System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x).getNom());

		}

	break;
case "Assitant":if(lst.get(x+1).getGrade()=="Assitant") {
	System.out.println("same grade Assistant , look for daterec ");

}else if(lst.get(x+1).getGrade()=="Maitre de Conférences") {
	System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x+1).getNom());

}
else if(lst.get(x+1).getGrade()=="Maitre Assitant") {
	System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x+1).getNom());

}else if(lst.get(x+1).getGrade()=="Professeur") {
	System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x).getNom());

}

break;
case "Professeur": if(lst.get(x+1).getGrade()=="Professeur") {
	System.out.println("same grade Professeur , look for daterec ");

}else if(lst.get(x+1).getGrade()=="Maitre de Conférences") {
	System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x+1).getNom());

}
else if(lst.get(x+1).getGrade()=="Maitre Assitant") {
	System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x+1).getNom());

}else if(lst.get(x+1).getGrade()=="Assitant") {
	System.out.println(" matiere "+ matiereDemandee+"affecter au "+lst.get(x+1).getNom());

}

}break;
 */



 