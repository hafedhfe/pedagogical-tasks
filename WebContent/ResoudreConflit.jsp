<%@page import="beans.MatiereDemande"%>
<%@page import="metiers.Enseignant"%>
<%@page import="beans.ChargeHoraire"%>
<%@page import="beans.FicheDeVoeux"%>
<%@page import="java.util.ArrayList"%>
<%@page import="metiers.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection;"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%


Connection cnx1=null;
Connection cnx2=null;
Statement st,st1=null;
ResultSet rst,rst1=null;
String nom_matiere=null;
 List <FicheDeVoeux> ficheDeVoeux=new ArrayList<FicheDeVoeux>();
 List <ChargeHoraire> chargeHoraire=new ArrayList<ChargeHoraire>();
 
float coursDemande =0;
float tdDemande =0;
//PrintWriter pw=response.getWriter();
 PreparedStatement pstatement = null;

int updateQuery = 0;
try {
	Class.forName("com.mysql.jdbc.Driver");
    System.out.println("driver sava sava!");
 
    cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb","root","");
    System.out.println("connnexion base de donnée enseignant sava!");
     
   
  
    String requet1 ="select distinct(f.nom_enseignant),m.nom_matiere, m.id_matiere, m.cours,m.td ,m.filiere,m.niveau ,f.specialite,f.grade,f.email,f.tel from matiere m,fichedevoeux f where m.id_matiere=f.id_matiere and m.nom_matiere in(select nom_matiere from matiere m1 where m.id_enseignant <> m1.id_enseignant);";
    		    st1=cnx1.createStatement();
    rst1=st1.executeQuery(requet1);
    out.println("<center><h1>liste de matiere demandée </h1></center>");
     out.println("<table border=\"3\">\r\n" + 
			"   <tr>\r\n" + 
			"       <td colspan=\"1\">id_matiere</td>\r\n" + 
			"       <td colspan=\"1\">nom_matiere</td>\r\n" + 
			"       <td colspan=\"1\">cours en heurs\r\n" + 
			"</td>\r\n" + 
			"       <td colspan=\"1\">td  en heurs</td>\r\n" + 
			"       <td colspan=\"1\">filiere</td>\r\n" + 
			"       <td colspan=\"1\">	niveau</td>\r\n" + 
			 
		
			"       \r\n" + 
			"    \r\n" + 
			"        <td>grade</td>\r\n" + 
			"          \r\n" + 
			"        <td> email</td>\r\n" + 
			"        <td>tel.</td>\r\n" + 
		 
			"        <td>specialite</td></tr>\r\n"  
		 ); 
 FicheDeVoeux f=new FicheDeVoeux();
 Enseignant e=new Enseignant();
  MatiereDemande m=new MatiereDemande();
    while(rst1.next()){     
    	 
    	   
        String id_matiere=rst1.getString("id_matiere");
        nom_matiere=rst1.getString("nom_matiere");
  
    	int td=rst1.getInt("td");
    	int cours=rst1.getInt("cours");          
    	String filiere=rst1.getString("filiere");
    	int niveau=rst1.getInt("niveau");
    	String nom_enseignant=rst1.getString("nom_enseignant");
    	String specialite=rst1.getString("specialite");
    	String grade=rst1.getString("grade");
    	 
    	String email=rst1.getString("email");
    	String tel=rst1.getString("tel");
    	coursDemande=cours;
    	tdDemande=td;
    	 m.setMatiereDemandee(nom_matiere);
    	m.setFiliere(filiere);
    	m.setNiveau(niveau);
    	m.setCours(cours);
    	m.setTd(td);
    	f.setMatiere(m);
    	e.setNom(nom_enseignant);
    	e.setEmail(email);
    	e.setTell(tel);
    	e.setGrade(grade);
    	f.setSpecialite(specialite);
    	//ficheDeVoeux.add(f); 
    	
    	 out.println( "<tr>\r\n" + 
					"        <td>"+id_matiere+"</td>\r\n" + 
					"        <td>"+nom_matiere+"</td>\r\n" + 
					"       \r\n" + 
					"    \r\n" + 
					"        <td>"+cours+"</td>\r\n" + 
					"          \r\n" + 
					"        <td> "+td+"</td>\r\n" + 
					"        <td>"+filiere+"</td>\r\n" + 
					"        <td>"+niveau+"</td>\r\n" + 
					"        <td>"+grade+"</td>\r\n" + 
					"        \r\n" + 
					"    \r\n" + 
					"        <td>"+email+"</td>\r\n" + 
					"        <td>"+tel+"</td>\r\n" + 
					"         \r\n" + 
					"   \r\n" + 
				
					"        <td>"+specialite+"</td>\r\n" + 
					"     </tr>  \r\n"  
					 
					 );
    	 System.out.println("charge horaire cours prof :"+  cours);
    	
    	 System.out.println(nom_matiere);
    	 System.out.println(td);
    	 System.out.println(cours);
       	 
    	 System.out.println(filiere);
       	 System.out.println(specialite);
    	 System.out.println(grade);
    	 System.out.println(email);
    	 System.out.println(tel);
    	// System.out.println(ficheDeVoeux.get(0).getEnseignant().getNom()); 

    
    }

  
    out.println(" <table border=3><tr><td>nom_matiere</td>       <td>cours  en heurs par semestre</td>\r\n" + 
			"        <td>td  en heurs par semestre</td>\r\n" + 
			"        <td>tp  en heurs par semestre</td>\r\n" + 
			"        <td>cours  en heurs par semaine</td>\r\n" + 
			"        <td>td  en heurs par semaine</td>\r\n" + 
			"        <td>tp  en heurs par semestre</td>\r\n" + 
			"        </tr>\r\n" );
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("driver sava sava!");
	cnx2=DriverManager.getConnection("jdbc:mysql://localhost:3306/lfi","root","");
	System.out.println("connnexion base de donnée lfi sava!");
	System.out.println(nom_matiere);
	    String requet ="select nom_matiere,cours,td,tp,ci from matiere where nom_matiere='"+nom_matiere+"' ; "; 
	    st=cnx2.createStatement();
		System.out.println("------------   st-----------");
	
		 

    rst=st.executeQuery(requet);
 
	System.out.println("-------RST----------------");

 ChargeHoraire c=new ChargeHoraire();
 
    while(rst.next()){     
    	

        String nom_matiere2=rst.getString("nom_matiere");
    	float cours=rst.getInt("cours");
    	float td=rst.getInt("td");
    	float tp=rst.getInt("tp");          
    	float ci=rst.getInt("ci");
     	c.setCi(ci);
     	c.setCours(cours);
     	c.setNom_matiere(nom_matiere);
     	c.setTd(td);
     	c.setTp(tp);
     	chargeHoraire.add(c);
     	
   	 System.out.println("charge horaire cours  :  "+cours);
   	 System.out.println("charge horaire td  :  "+td);
   	 System.out.println("charge horaire tp  :  "+tp);
   	 System.out.println("charge horaire ci  :  "+ci);

    	
   	 out.println("<tr>"+
					"        <td>"+nom_matiere2+"</td>\r\n" + 
					"        <td>"+cours+"</td>\r\n" + 
					"       \r\n" + 
					"    \r\n" + 
					"        <td>"+td+"</td>\r\n" + 
					"          \r\n" + 
					"        <td> "+tp+"</td>"+
					" <td>"+(cours/14)+"</td>\r\n  <td>"+(td/14)+"</td>\r\n  <td>"+(tp/14)+"</td>\r\n  </tr></table>\r\n");
   	float coursParSemaine=cours/14;
	float tdParSemaine=td/14;
	float tpParSemaine=tp/14;
    	 int nbsection=Integer.valueOf(request.getParameter("section"));
    	    int nbtd=Integer.valueOf(request.getParameter("section"));
    	    int nbtp=nbtd*2;
    	  if(nbsection*(coursParSemaine/14)<=coursDemande){
    		   out.println(" <h2>Conflit cours</h2>");
    		  out.println(" \nConflit  :affectation du matiere\t    "+nom_matiere);
    		  out.println("  le charge demande par semaine est \t  "+coursDemande*2+" le charge de matiere\t"+(coursParSemaine/14)*nbsection);
    		  
    		  //if(lgrade.get(0).equals("Maitre de Conférences") && lgrade.get(1).equals("Maitre Assitant")){
    			
    			
    		  
    	  }
    	  if(nbtd*(tdParSemaine/14)<=tdDemande){
    		  out.println(" <h2>Conflit td</h2>");
    		  out.println(" \nConflit  :affectation du matiere\t    "+nom_matiere);
    		  out.println("  le charge demande par semaine est \t  "+tdDemande  *2+" le charge de matiere\t"+(tdParSemaine/14)*nbtd);
    		  
    		  
    	  }
    	    
    	    
    }
   
    

						}
					catch(Exception e){
						e.printStackTrace();
					}
					



%>

</body>
</html>