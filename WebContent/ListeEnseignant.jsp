<%@page import="java.util.Date"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste des Enseignants</title>
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
.inner-banner .btn-custom{
  background-color: #2A79FF;
  color: #ffffff;

  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.inner-banner .btn-shoose{

   display: inline-block;
  padding: 17px 25px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 11px;
  box-shadow: 0 9px #999;
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


body{
  background:#999;
    background-image: url("images/dusk.jpg");
    opacity: 0.9;
    background-size:cover;
    height: 100%;
    margin:auto;

}


table.blueTable {
  border: 1px solid #1C6EA4;
  background-color: #EEEEEE;
  width: 100%;
  text-align: left;
  border-collapse: collapse;
}
table.blueTable td, table.blueTable th {
  border: 1px solid #AAAAAA;
  padding: 3px 2px;
}
table.blueTable tbody td {
  font-size: 13px;
}
table.blueTable tr:nth-child(even) {
  background: #D0E4F5;
}
table.blueTable thead {
  background: #1C6EA4;
  background: -moz-linear-gradient(top, #5592bb 0%, #327cad 66%, #1C6EA4 100%);
  background: -webkit-linear-gradient(top, #5592bb 0%, #327cad 66%, #1C6EA4 100%);
  background: linear-gradient(to bottom, #5592bb 0%, #327cad 66%, #1C6EA4 100%);
  border-bottom: 2px solid #444444;
}
table.blueTable thead th {
  font-size: 15px;
  font-weight: bold;
  color: #FFFFFF;
  border-left: 2px solid #D0E4F5;
}
table.blueTable thead th:first-child {
  border-left: none;
}

table.blueTable tfoot {
  font-size: 14px;
  font-weight: bold;
  color: #FFFFFF;
  background: #D0E4F5;
  background: -moz-linear-gradient(top, #dcebf7 0%, #d4e6f6 66%, #D0E4F5 100%);
  background: -webkit-linear-gradient(top, #dcebf7 0%, #d4e6f6 66%, #D0E4F5 100%);
  background: linear-gradient(to bottom, #dcebf7 0%, #d4e6f6 66%, #D0E4F5 100%);
  border-top: 2px solid #444444;
}
table.blueTable tfoot td {
  font-size: 14px;
}
table.blueTable tfoot .links {
  text-align: right;
}
table.blueTable tfoot .links a{
  display: inline-block;
  background: #1C6EA4;
  color: #FFFFFF;
  padding: 2px 8px;
  border-radius: 5px;
}
h1{font-family: Georgia, serif;
font-size: 33px;
letter-spacing: 2px;
word-spacing: 2px;
 font-weight: normal;
text-decoration: none solid rgb(68, 68, 68);
font-style: italic;
font-variant: normal;
text-transform: capitalize;
color: #e0dfdc;

letter-spacing: .1em;
text-shadow: 0 -1px 0 #fff, 0 1px 0 #2e2e2e, 0 2px 0 #2c2c2c, 0 3px 0 #2a2a2a, 0 4px 0 #282828, 0 5px 0 #262626, 0 6px 0 #242424, 0 7px 0 #222, 0 8px 0 #202020, 0 9px 0 #1e1e1e, 0 10px 0 #1c1c1c, 0 11px 0 #1a1a1a, 0 12px 0 #181818, 0 13px 0 #161616, 0 14px 0 #141414, 0 15px 0 #121212, 0 22px 30px rgba(0, 0, 0, 0.9);

}
</style>
</head>
<body>
<header class="container-fluid header">
<div class="div-navbar">

           <nav class="navbar">

                <a href=index.html> <img src="images/isimmlogo.PNG" alt="LOGO" style="float:left";width: 5px;height: 5px;></a> 
                <ul style="float:middle">
                     <li><a href="readMore.html">Presentation</a></li> 
                   
                   <li><a href="#">Enseignants&nbsp&#8681</a>
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
                                                           <li><a href="reunion.html">Programmer Une réunion</a></li>
                                                     </ul>
                  
                                                </li>
                                                <li><a href="#">Compte &nbsp&#8681</a>
                                                 <ul>
                                                           <li><a   href="ParametresCompte.html">modifier profile chef de département</a></li>
                                                           <li><a   href="Connection.html">déconnexion </a></li>
                                                     </ul>
                                              
                                                </li>
                                                <!--   <li>  <input type="text" name="search" placeholder="Search.." ></li>
-->
                   </ul>
   </nav>             
</div>
</header>
<%
Connection cnx1=null;
 Statement  st1=null;
ResultSet rst1=null;
String nom_matiere=null;
  
float coursDemande =0;
float tdDemande =0;
//PrintWriter pw=response.getWriter();
 PreparedStatement pstatement = null;

int updateQuery = 0;
try {
	Class.forName("com.mysql.jdbc.Driver");
  //  System.out.println("driver sava sava!");
 
    cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb?zeroDateTimeBehavior=convertToNull&autoReconnect=true&characterEncoding=UTF-8&characterSetResults=UTF-8","root","");
          String requet1 ="select * from Enseignants;";
           		    st1=cnx1.createStatement();
    rst1=st1.executeQuery(requet1);
    out.println("<center><h1 >LISTE DES ENSEIGNANTS </h1></center><br><br>");
     out.println("<table class=\"blueTable\" style=\"height: 200px;\" width=\"396\" border=\"3\"  >\r\n" + 
			"   <tr>\r\n" + 
			"       <td colspan=\"1\">Nom De Enseignant</td>\r\n" + 
			"       <td colspan=\"1\">Adresse</td>\r\n" + 
			"       <td colspan=\"1\">e-mail\r\n" + 
			
			"       <td colspan=\"1\">Grade</td>\r\n" + 
		 			"       <td colspan=\"1\">Ancienite De Grade</td>\r\n" + 
			"       \r\n" + 
			"    \r\n" + 
			"        <td>Date De Recrutement</td>\r\n" + 
			"          \r\n" + 
			"        <td> titrehabilitation</td>\r\n" + 
		
		 
			"        <td>datehabilitation</td> \r\n"  +
		
			"          " + 
			"        <td> etablissementhabilitation</td>\r\n" + 
		
		 
			"        <td>titrethese</td> "  +
		
			"          " + 
			"        <td> datethese</td>\r\n" + 
		
		 
			"        <td>etablissementthese</td> \r\n"  +
 			"          " + 
			"        <td> titremastere</td>\r\n" + 
		
		 
			"        <td>datemastere</td> \r\n"  +
			"        <td>etablissementmastere</td></tr>\r\n" 
		 ); 
    
    while(rst1.next()){     
    	 

       	   
    	String   nom=rst1.getString("nom");
    	String adresse=rst1.getString("adresse");
      	String email=rst1.getString("email");
    	String grade=rst1.getString("grade");          
    	String passe=rst1.getString("passe");
    	Date  ancienitegrade=rst1.getDate("ancienitegrade");
    	Date daterec=rst1.getDate("daterec");
    	String titrehabilitation=rst1.getString("titrehabilitation");
    	String datehabilitation=rst1.getString("datehabilitation");
    	String etablissementhabilitation=rst1.getString("etablissementhabilitation");
    	String titrethese=rst1.getString("titrethese");
    	String datethese=rst1.getString("datethese");
    	String etablissementthese=rst1.getString("etablissementthese");
    	String titremastere=rst1.getString("titremastere");
   	String datemastere=rst1.getString("datemastere");
   	String etablissementmastere=rst1.getString("etablissementmastere");
    	 out.println( "<tr>\r\n" + 
					"        <td>"+nom+"</td>\r\n" + 
					"        <td>"+adresse+"</td>\r\n" + 
					"       \r\n" + 
					"    \r\n" + 
					"        <td>"+email+"</td>\r\n" + 
					"          \r\n" + 
					"        <td> "+grade+"</td>\r\n" + 
					"        <td>"+ancienitegrade+"</td>\r\n" + 
					"        <td>"+daterec+"</td>\r\n" + 
					"        <td>"+titrehabilitation+"</td>\r\n" + 
					"        \r\n" + 
					"    \r\n" + 
					"        <td>"+datehabilitation+"</td>\r\n" + 
					"        <td>"+etablissementhabilitation+"</td>\r\n" + 
					"         \r\n" + 
					"   \r\n" + 
				
					"        <td>"+titrethese+"</td>\r\n" + 
					"      \r\n" +
					"        <td>"+datethese+"</td>\r\n" + 
					"        <td>"+etablissementthese+"</td>\r\n" + 
					"        <td>"+titremastere+"</td>"+ 
					"  \r\n" + 
					"        <td>"+datemastere+"</td>" + 
					"        <td>"+etablissementmastere+"</td>\r\n" + 
					"         \r\n" + 
					 
					"     </tr>  \r\n"  
					 
					 
					 );
					 System.out.println("_________________________"+etablissementmastere);
    	// System.out.println("charge horaire cours prof "+i+" :"+  cours);
    	//i++;
    	/* System.out.println(nom_matiere);
    	 System.out.println(td);
    	 System.out.println(cours);
       	 
    	 System.out.println(filiere);
       	 System.out.println(specialite);
    	 System.out.println(grade);
    	 System.out.println(email);
    	 System.out.println(tel);
   
    System.out.println("enseigant :\t"+ficheDeVoeux.get(0).getEnseignant().getNom()); 
   	  System.out.println("MatiereDemandee \t" +ficheDeVoeux.get(0).getMatiere().getMatiereDemandee());
    	*/
    
    }}catch(Exception e){
    	e.printStackTrace();
    }
    
    %>
</body>
</html>