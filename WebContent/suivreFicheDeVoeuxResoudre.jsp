<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Date"%>
<%@page import="prob.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="metiers.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/scripts.js"></script>
<style type="text/css">

body{
  background:#999;
    background-image: url("http://thekitemap.com/images/feedback-img.jpg");
    opacity: 0.9;
    background-size:cover;
    height: 100%;
    margin:auto;
  
}
.navbar {
  width: 100%;
  background: #6699cc;
  box-shadow: 0 2px 5px 0 rgba(0,0,0,0,16) , 0 2px 10px 0 rgba(0,0,0,0,12);
float: right;
}

ul{
  color: #4dd0e1;
  margin: 0;
  padding: 0;
  text-align: left;
  list-style: none;
  display: inline;
}
ul li{
    font: bold 12px/18px sans-serif;
    display: inline-block;
padding: 25px 20px;
background: #6699cc;
position: relative;
}
ul li a{
  text-decoration: none;
  padding: 25px 20px;
  color: white;
  font-size: 18px;
}
ul li:hover{
  background: #4dd0e1;
  color: white;
}
ul li ul{
padding: 0;
position: absolute;
top: 70px;
left: 0;
width: 250px;
display: none;
visibility: hidden;

}
ul li ul li{
  background-color: #00acc1;
  display: block;
}
ul li ul li:hover{
  background: #4dd0e1;

}
ul li:hover ul{
  display: block;
  opacity: 1;
  visibility: visible;
}
ul ul ul li {
  display: none;
}
ul ul li:hover li{
  display: block;
}
ul ul ul{
  left: 100%;
  top:0;
}


input[type=text] {
    width: 135px;

    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 20px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 10px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
input[type=text]:focus {
    width: 100%;
}
.inner-banner{
  position: absolute;
  top: 50%;
  left: 0;
  width: 100%;
  text-align: center;

}
.inner-banner h1{
font-family: 'Raleway', sans-serif;
font-family: 'Berkshire Swash' ;
font-family: 'Great Vibes' ;
font-family: 'Orbitron', sans-serif;
font-family: 'Kaushan Script' ;
font-family: 'Butcherman';
  color: #000000;
  text-decoration: 1px 1px 20px;
}
.inner-banner .btn-custom:hover{
   background-color: black;
    color: white;
}



.label-des{
    font: 15px arial, sans-serif;
    
}
 
 

.inner-banner .btn-shoose:hover {background-color: #3e8e41}

.inner-banner .btn-shoose:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}


.footer{
    background-color: #12010A;
height: 40px;
}
.marquee{
font-family: Impact, Charcoal, sans-serif;
font-size:32px;
color:#C1B7B7;
scrollamount="1";
}



#submit {
  background-color: #bbb;
  padding: .5em;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  color: #fff;
  font-family: 'Oswald';
  font-size: 15px;
  text-decoration: none;
  border: none;
}



#cancel {
   background-color: #bbb;
  padding: .5em;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  color: #fff;
  font-family: 'Oswald';
  font-size: 15px;
  text-decoration: none;
  border: none;
}



</style>
</head>
<body>
<header class="container-fluid header">
<div class="div-navbar">

           <nav class="navbar">

                <a href=index.html> <img src="images/isimmlogo.PNG" alt="LOGO" style="float:left"></a> 
                <ul style="float:middle">
                     <li><a href="readMore.html">Presentation</a></li> 
                   
                   <li><a href="#">Enseignants &nbsp&#8681</a>
                    <ul>
                                              <li><a href="register.html">Ajouter un nouveau enseignant </a></li>
                                              <li><a  href="ListeEnseignant.jsp">Suivre la liste d'enseignants</a></li>
   
                                                    </ul>
                                              </li>          
                  <li><a href="#">Services&nbsp&#8681</a>
                                          <ul>
                                               <li><a  href="planEtude.html">Suivre les plan d'étude</a></li>
                                              <li><a href="ConsulterFicheDeVoeux.jsp">Consulter les fiches des voeux</a></li>
                                              <li><a href="suivreFicheDeVoeux.jsp">suivre les affectations</a></li>
                                                     </ul>
                                              </li>                  
                  <li><a href="config.html">Config semestre</a></li>
                                               <li><a href="#">Contacter</a>
                                                     <ul>
                                                           <li><a href="SendMail.html">Envoyer Un mail</a></li>
                                                           <li><a>Programmer Une réunion</a></li>
                                                     </ul>
                  
                                                </li>
                                                <li><a href="#">Compte &nbsp&#8681</a>
                                                 <ul>
                                                           <li><a   href="ParametresCompte.html">modifier profile chef de département</a></li>
                                                           <li><a   href="Connexion.jsp">déconnexion </a></li>
                                                     </ul>
                                              
                                                </li>
                                                <!--   <li>  <input type="text" name="search" placeholder="Search.." ></li>
-->
                   </ul>
   </nav>             
</div>
</header>
<form action="suivreFicheDeVoeuxResoudre.jsp" >
<%
out.println(" ");

Connection cnx1=null;
 Statement st=null,st1=null,st2=null,stinsert=null,stdel=null,stselct=null;
ResultSet rstselct=null,rstd=null,rstse=null,rst1=null;
String nom_matiere=null;
 List <FicheDeVoeux> ficheDeVoeux=new ArrayList<FicheDeVoeux>();
 List <ChargeHoraire> chargeHoraire=new ArrayList<ChargeHoraire>();
 List <Enseignant> l=new ArrayList<Enseignant>();
MatiereDemande m=null;
float coursDemande =0;
float tdDemande =0;
PreparedStatement pstatement = null;

int updateQuery = 0;
try {
	
	  out.println("  <center><h1> liste de matiere affectée  </h1></center>");
    /*  out.println("<table border=\"3\" width=100% >\r\n" + 
  			"   <tr>\r\n" + 
  			"       <td colspan=\"1\">nom_enseignant</td>\r\n" + 
  			"       <td colspan=\"1\">nom_matiere</td>\r\n" + 
  			"       <td colspan=\"1\">cours en heurs\r\n" + 
  			"</td>\r\n" + 
  			"       <td colspan=\"1\">td  en heurs</td> </tr>\r\n" );
	*/
	//les matieres dont l'affectation sera  direct
   cnx1=new ConnexionEns().getCnx();
	String requet ="select * from fichedevoeux GROUP BY nom_matiere,cours,td HAVING count(nom_enseignant) =1";
	   		
	   	 st2=cnx1.createStatement();
	   	rstselct=st2.executeQuery(requet);
	   		while(rstselct.next()){  
	   		    nom_matiere=rstselct.getString("nom_matiere");
		    	String nom_enseignant=rstselct.getString("nom_enseignant");
		    	float td=rstselct.getFloat("td");
		    	float cours=rstselct.getFloat("cours");  
	   	/*  out.println( "<tr>\r\n" + 
					"        <td>"+nom_enseignant+"</td>\r\n" + 
					"        <td>"+nom_matiere+"</td>\r\n" + 
					"       \r\n" + 
					"    \r\n" + 
					"        <td>"+cours+"</td>\r\n" + 
					"          \r\n" + 
					"        <td> "+td+"</td> </tr>\r\n" );*/
	   	 String reqInsert="INSERT INTO `matiereaffectee` (`nom_enseignant`, `nom_matiere`, `chargecours`, `chargetd`, `chargetp`) VALUES ('"+nom_enseignant+"','"+nom_matiere+"', '"+ cours+"', '"+td+"', '"+td*2+"');";	
		 
	   	 stinsert = cnx1.createStatement();
         int v= stinsert.executeUpdate(reqInsert);
          
	   		}   out.println( "</table>");
	   //******************************************************************************************************
	   	//  out.println("  <center><h1>liste de matiere  en Conflit </h1></center>");
	 	 
			/*    out.println("<table border=\"3\" width=100% >\r\n" + 
	  			"   <tr>\r\n" + 
	  			"       <td colspan=\"1\">nom_enseignant</td>\r\n" + 
	  			"       <td colspan=\"1\">nom_matiere</td>\r\n" + 
	  			"       <td colspan=\"1\">cours en heurs\r\n" + 
	  			"</td>\r\n" + 
	  			"       <td colspan=\"1\">td  en heurs</td> \r\n" );
		
	
		 
			Class.forName("com.mysql.jdbc.Driver");
		  //  System.out.println("driver sava sava!");
		 
		    cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb?zeroDateTimeBehavior=convertToNull&autoReconnect=true&characterEncoding=UTF-8&characterSetResults=UTF-8","root","");
		   //    System.out.println("connnexion base de donnée enseignant sava!");
		   
 		   		String req2="select * from matiereaffectee;"; 
		   		stselct=cnx1.createStatement();
		   		rstselct=stselct.executeQuery(req2);
		   	 MatiereAffectee ma=null;
		   	 while(rstselct.next()){  
		   		 nom_matiere=rstselct.getString("nom_matiere");
			    	String nom_enseignant=rstselct.getString("nom_enseignant");
			    	float td=rstselct.getFloat("chargetd");
			    	float cours=rstselct.getFloat("chargecours");  
		   	  out.println( "<tr>\r\n" + 
						"        <td>"+nom_enseignant+"</td>\r\n" + 
						"        <td>"+nom_matiere+"</td>\r\n" + 
						"       \r\n" + 
						"    \r\n" + 
						"        <td>"+cours+"</td>\r\n" + 
						"          \r\n" + 
						"        <td> "+td+"</td></tr>\r\n" );
		   	 }   out.println( "</table>");
		     st2=cnx1.createStatement();
		    rst1=st2.executeQuery(requet);
		   
		    while(rst1.next()){     
		    	 FicheDeVoeux f=new FicheDeVoeux();
		    	 System.out.println("prof1");
		        nom_matiere=rst1.getString("nom_matiere");
		    	String nom_enseignant=rst1.getString("nom_enseignant");
		    	float td=rst1.getFloat("td");
		    	float cours=rst1.getFloat("cours");          
		      	ma=new MatiereAffectee(nom_matiere,nom_enseignant,cours,td,td*2);
		
	              System.out.println("SHOW DATABASE");
	            
	            

		    }
		
		 
		
		    cnx1.close();
		
		
		
		*/
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		Class.forName("com.mysql.jdbc.Driver");
	  //  System.out.println("driver sava sava!");
	 
	    cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb?zeroDateTimeBehavior=convertToNull&autoReconnect=true&characterEncoding=UTF-8&characterSetResults=UTF-8","root","");
	   //    System.out.println("connnexion base de donnée enseignant sava!");
	     
	   
	  
	       String requet1 ="select distinct(f.nom_enseignant),f.nom_matiere, f.cours,f.td ,f.filiere,f.niveau ,f.specialite,f.grade, e.daterec from fichedevoeux f,Enseignants e where f.nom_enseignant=e.nom and f.nom_matiere in(select nom_matiere from fichedevoeux m1 where f.nom_enseignant <> m1.nom_enseignant);";
	           		    st1=cnx1.createStatement();
	    rst1=st1.executeQuery(requet1);
	  //  out.println("<center><h1>liste de matiere demandée </h1></center>");
	     out.println("<table border=\"3\" width=100% >\r\n" + 
				"   <tr>\r\n" + 
				"       <td colspan=\"1\">nom_enseignant</td>\r\n" + 
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
			 
			 
				"        <td>specialite</td></tr>\r\n"  
			 ); 
	     
	     //___________________________________________________________________________________________________________
	   
	    while(rst1.next()){  
	    	  Enseignant e=null;
	    	 FicheDeVoeux f=new FicheDeVoeux();
	    	 
	    	 m=new MatiereDemande();

	       // String id_matiere=rst1.getString("id_matiere");
	        nom_matiere=rst1.getString("nom_matiere");
	  
	    	float td=rst1.getFloat("td");
	    	float cours=rst1.getFloat("cours");          
	    	String filiere=rst1.getString("filiere");
	    	float niveau=rst1.getInt("niveau");
	    	String nom_enseignant=rst1.getString("nom_enseignant");
	    	String specialite=rst1.getString("specialite");
	    	String grade=rst1.getString("grade");
	    	 Date daterec=rst1.getDate("daterec");
	    	     	coursDemande=cours;
	    	tdDemande=td;
	    	m.setMatiereDemandee(nom_matiere);
	    	m.setFiliere(filiere);
	    	m.setNiveau(niveau);
	     	m.setCours(cours);
	    	m.setTd(td);
	    	m.setListe(l);
	    	f.setMatiere(m);
	    	e=new Enseignant(nom_enseignant,grade,daterec);
	    	System.out.println("nom prof :"+e.getNom());
	    	f.setEnseignant(e);
	    	
	     	//System.out.println("taille de la liste   ----"+l.size());
	     	System.out.println("________________________________________________________________________________");
	     	//System.out.println("________________________________________________________________________________");

	   	f.setSpecialite(specialite);
	    	ficheDeVoeux.add(f); 
			l=m.getListe(m.getMatiereDemandee());
	        
	    	 //m.resoudeConflit(l,m.getMatiereDemandee());
	        
	    	//m.getAllProf(m.getMatiereDemandee());
	    	//System.out.println(ficheDeVoeux.size());
	    	/* out.println( "<tr>\r\n" + 
						"        <td>"+nom_enseignant+"</td>\r\n" + 
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
					 
						"         \r\n" + 
						"   \r\n" + 
					
						"        <td>"+specialite+"</td>\r\n" + 
						"     </tr>  \r\n"  
						 
						 );*/
	    	 m.resoudreConflit(l,nom_matiere);
		    //m.suppMatiereAffectée(id_matiere);
	    	  cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb?zeroDateTimeBehavior=convertToNull&autoReconnect=true&characterEncoding=UTF-8&characterSetResults=UTF-8","root","");
			   //    System.out.println("connnexion base de donnée enseignant sava!");
			   
	 		   		String req2="select * from matiereaffectee;"; 
			   		stselct=cnx1.createStatement();
			   		rstselct=stselct.executeQuery(req2);
			   	 MatiereAffectee ma=null;
			   	 while(rstselct.next()){  
			   		String nom_matier=rstselct.getString("nom_matiere");
				    	String nom_ensei=rstselct.getString("nom_enseignant");
				    	float tds=rstselct.getFloat("chargetd");
				    	float cour=rstselct.getFloat("chargecours");  
			   	  out.println( "<tr>\r\n" + 
							"        <td>"+nom_ensei+"</td>\r\n" + 
							"        <td>"+nom_matier+"</td>\r\n" + 
							"       \r\n" + 
							"    \r\n" + 
							"        <td>"+cour+"</td>\r\n" + 
							"          \r\n" + 
							"        <td> "+tds+"</td></tr>\r\n" );
			   	 }  

	    
	    } out.println( "</table>");
     //while 2
    out.println("</table>");
    

}	 

catch(Exception e){
	 
	 
 						e.printStackTrace();
}
 
 

%>
<br><br><div align="center">
        <button type="reset"   id="cancel">Annuler les affectations</button>
        <button type="submit" id="submit">valider les affectations</button>
      </div>
</body>
</html>