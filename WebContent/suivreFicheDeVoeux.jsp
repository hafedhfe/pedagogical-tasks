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
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Home: Application de repartition des taches pedagoguique dans le departemenet informatique</title>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
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
  padding: 10px 24px;
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
  padding: 10px 24px;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  color: #fff;
  font-family: 'Oswald';
  font-size: 15px;
  text-decoration: none;
  border: none;
}
hr.style2 {
	border-top: 3px double #FFB900;
}

#cancel:hover {
  border: none;
  background: red;
  box-shadow: 0px 0px 1px #777;
}
#submit:hover {
  border: none;
  background: green;
  box-shadow: 0px 0px 1px #777;
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
        <form action="suivreFicheDeVoeux.jsp" method="post"> 
<%
out.println("  <center><h1> liste des matières affectées  </h1></center>");
out.println("<table border=\"3\" width=100% >\r\n" + 
		"   <tr>\r\n" + 
		"       <td colspan=\"1\">nom_enseignant</td>\r\n" + 
		"       <td colspan=\"1\">nom_matiere</td>\r\n" + 
		"       <td colspan=\"1\">cours en heurs\r\n" + 
		"</td>\r\n" + 
		"       <td colspan=\"1\">td  en heurs</td>\r\n" 
		 
	 ); 

Connection cnx1=null;
Statement st=null,st1=null,st2=null,stinsert=null,stdel=null,stselct=null,stm=null,ste=null,st8=null;
ResultSet rstselct=null,rstd=null,rstse=null,rst1=null,rstm=null,rste=null,rst8=null;
//String nom_matiere=null;
 List <FicheDeVoeux> ficheDeVoeux=new ArrayList<FicheDeVoeux>();
 List <ChargeHoraire> chargeHoraire=new ArrayList<ChargeHoraire>();
 List <Enseignant> l=new ArrayList<Enseignant>();
MatiereDemande m=null;
float coursDemande =0;
float tdDemande =0;
PreparedStatement pstatement = null;

Class.forName("com.mysql.jdbc.Driver");
//  System.out.println("driver sava sava!");


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
	  	out.println("</table><br><br><hr class=style2  >");
	  	
	   	out.println("  <center><h1> liste des matières sans conflits  </h1></center>");
	    out.println("<table border=\"3\" width=100% >\r\n" + 
	  			"   <tr>\r\n" + 
	  			"       <td colspan=\"1\">nom_enseignant</td>\r\n" + 
	  			"       <td colspan=\"1\">nom_matiere</td>\r\n" + 
	  			"       <td colspan=\"1\">cours en heurs\r\n" + 
	  			"</td>\r\n" + 
	  			"       <td colspan=\"1\">td  en heurs</td> </tr>\r\n" );
		
		//les matieres dont l'affectation sera  direct
	   cnx1=new ConnexionEns().getCnx();
	String requet ="SELECT * from fichedevoeux GROUP by nom_matiere HAVING COUNT(nom_enseignant)<2";
		   		
		   	 st2=cnx1.createStatement();
		   	rstselct=st2.executeQuery(requet);
		   		while(rstselct.next()){  
		   		String    nom_matiere=rstselct.getString("nom_matiere");
			    	String nom_enseignant=rstselct.getString("nom_enseignant");
			    	float td=rstselct.getFloat("td");
			    	float cours=rstselct.getFloat("cours");  
		   	  out.println( "<tr>\r\n" + 
						"        <td>"+nom_enseignant+"</td>\r\n" + 
						"        <td>"+nom_matiere+"</td>\r\n" + 
						"       \r\n" + 
						"    \r\n" + 
						"        <td>"+cours+"</td>\r\n" + 
						"          \r\n" + 
						"        <td> "+td+"</td> </tr>\r\n" ); 
		 
		   	 
		   		out.println("");
		   		
								Enseignant ensei=new Enseignant(nom_enseignant);
		   	 MatiereAffectee maa=new MatiereAffectee(nom_matiere,nom_enseignant,cours,td,td*2);
		   	  MatiereDemande md=new MatiereDemande();
		   	  //String btnaffsans=request.getParameter("btn-affecter-mat-sans-conflit");
		   	  
		   	  if(request.getParameter("btn-shoose")!=null){
		   	  md.insertMatiereAffectee(maa, cnx1);
		   	ensei.setDue(cours+td/1.83, cnx1, nom_enseignant);
		   	  md.deleteMatiereAffecteefromfiche(maa,cnx1);
		   	 System.out.println("btn not null");
		   	  }
		   	  else System.out.println("btn null");
		   		}%>
		   		</table><br><br><div align=center>		<input type=reset name="btnAnnuler" value="Annuler" id="cancel" />          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
						<input type=submit name="btn-shoose" id="submit" value="Affecter Matière">
						</div><% 
			  	out.println("<br><br><hr class=style2  >");
			   	out.println("  <center><h1> liste des matières avec conflits  </h1></center>");
			  	String req1="SELECT nom_matiere from fichedevoeux group by nom_matiere HAVING COUNT(nom_enseignant)>1";
			  	cnx1=new ConnexionEns().getCnx();
			  	stm=cnx1.createStatement();
			  		rstm=stm.executeQuery(req1);
			  		while(rstm.next()){  
			  			String	nom_matiere=rstm.getString("nom_matiere");
			  					  // list.add(nom_matiere); 
			  					System.out.println("nom de matiere"+nom_matiere);
			  					      out.println("<table border=\"3\" width=100% >\r\n" + 
			  					  			"   <tr>\r\n" + 
			  					  			"       <td colspan=\"1\">nom_enseignant</td>\r\n" + 
			  					  			"       <td colspan=\"1\">grade</td>\r\n" + 	"       <td colspan=\"1\">specialite</td>\r\n" + 
			  					  					"       <td colspan=\"1\">filiere</td>\r\n" + 
			  					  							"       <td colspan=\"1\">niveau</td>\r\n" + 
			  					  				
			  					  			"       <td colspan=\"1\">cours en heurs\r\n" + 
			  					  			"</td>\r\n" + "       <td colspan=\"1\">Td en heurs\r\n" + 
			  					  			"</td>\r\n" + 
			  					  			"    </tr>\r\n" );
			  					      //select f.nom_enseignant,f.nom_matiere, f.cours,f.td ,f.filiere,f.niveau ,f.specialite,f.grade, e.daterec from fichedevoeux f,Enseignants e where f.nom_enseignant=e.nom and f.nom_matiere='Algorithme et Structure des Données 2'
 			  					  //  String req5="select distinct(f.nom_enseignant),f.nom_matiere, f.cours,f.td ,f.filiere,f.niveau ,f.specialite,f.grade, e.daterec from fichedevoeux f,Enseignants e where nom_matiere='"+nom_matiere+"' and  f.nom_enseignant=e.nom and f.nom_matiere in(select nom_matiere from fichedevoeux m1 where f.nom_enseignant <> m1.nom_enseignant) ";
			  				
			  					      
			  					      
			  					      
			  					      
			  					      String req5="select f.nom_enseignant,f.nom_matiere, f.cours,f.td ,f.filiere,f.niveau ,f.specialite,f.grade, e.daterec from fichedevoeux f,Enseignants e where f.nom_enseignant=e.nom and f.nom_matiere='"+nom_matiere+"';";

			  					   out.println("  <h3> <u>Matiere:"+ nom_matiere +"</u></h3> ");
			  					      ste=cnx1.createStatement();
			  					  	rste=ste.executeQuery(req5);
			  					  	//*****************************************************************************************************
			  					  	while(rste.next()){ 
			  					  	 Enseignant e=null;
			  				    	 FicheDeVoeux f=new FicheDeVoeux();
			  				    	 
			  				    	 m=new MatiereDemande();
			  					    	float td=rste.getFloat("td");
			  					    	float cours=rste.getFloat("cours");          
			  					    	String filiere=rste.getString("filiere");
			  					    	float niveau=rste.getInt("niveau");
			  					    	String nom_enseignant=rste.getString("nom_enseignant");
			  					    	String specialite=rste.getString("specialite");
			  					    	String grade=rste.getString("grade");
			  					    	 Date daterec=rste.getDate("daterec");
			  					    	System.out.println(nom_enseignant);
			  					    	System.out.println(grade);
			  					    	System.out.println(specialite);
			  					    	System.out.println(filiere);
			  					    	System.out.println(niveau);
			  					    	System.out.println(cours);
			  					    	System.out.println(td);
			  					    	m.setMatiereDemandee(nom_matiere);
			  					    	m.setFiliere(filiere);
			  					    	m.setNiveau(niveau);
			  					     	m.setCours(cours);
			  					    	m.setTd(td);
			  					    	m.setListe(l);
			  					     	f.setMatiere(m);
			  					    	e=new Enseignant(nom_enseignant, grade ,daterec);
			  					    	   	
			  					    	f.setEnseignant(e);
			  					    	
			  					     	//System.out.println("taille de la liste   ----"+l.size());
			  					     	System.out.println("________________________________________________________________________________");
			  					     	//System.out.println("________________________________________________________________________________");

			  					   	f.setSpecialite(specialite);
			  					    	ficheDeVoeux.add(f); 
			  							l=m.getListe(m.getMatiereDemandee());
			  					        
			  					      out.println( "<tr>\r\n" + 
			  									"        <td>"+nom_enseignant+"</td>\r\n" + 
			  									"        <td>"+grade+"</td>\r\n" + 
			  									"        <td>"+specialite+"</td>\r\n" + 
			  									"        <td>"+filiere+"</td>\r\n" + 
			  									"        <td>"+niveau+"</td>\r\n" + 
			  									
			  									"       \r\n" + 
			  									"    \r\n" + 
			  									"        <td>"+cours+"</td>\r\n" + 
			  									"        <td>"+td+"</td>\r\n" + 
			  									"          \r\n</tr>" );
			  					     	
			  					  	}out.println(" </table>");	%>
			  					<br><br><div align=center>
											
											<input type=reset name="btnAnnulerc" value="Annuler" id="cancel" />          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
								            <input type=submit name="btn-shoosec" id="submit" value="Affecter Matière">
											 
											 
											</div>
											
			  				<% if(request.getParameter("btn-shoosec")!=null){
		  						 m.resoudreConflit(l,nom_matiere);
			  			   	 System.out.println("btn not null");
			  			   	  }
			  			   	  else System.out.println("btn null");
			  			   		}
			  		
			  					//*******************************************************************************************************************
			  						   		
		   		
			  				

 %>

</form>

<form action="http://192.168.1.195/app/v1/send_push.php"  >
 <br><br><div align="center">
       <input type=submit name="btn-notif" id="submit" value="Envoyer Notification">
											    </div> 
<% 
if(request.getParameter("btn-notif")==null){
String req8="select email from users";  
System.out.print(" ...null");

   
       st8=cnx1.createStatement();
 	rst8=st8.executeQuery(req8);
 	//*****************************************************************************************************
 	while(rst8.next()){
 		String mail=rst8.getString("email");
 	

String autho="departementc4@gmail.com";
  String passe="departementInfo1" ;
  String from="departementc4@gmail.com" ;
   String to=mail;
  String subject="liste des matières affecteés";
  String message="bonjour";
SendMail sendEmail = new SendMail(autho,passe,from,to,subject,message);
sendEmail.start(); 
System.out.println("message envoyer");}}
 %>

 </form>

</body>
</html>