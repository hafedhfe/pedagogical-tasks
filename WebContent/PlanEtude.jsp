<%@page import="metiers.ConnexionLA"%>
<%@page import="metiers.Connexion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="metiers.Matiere"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
 <meta charset="UTF-8">
 <title> Suivre Plan Etude</title>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
 
<script type="text/javascript" src="js/scripts.js"></script>
<style type="text/css">

body{
  background:#999;
    background-image: url("http://thekitemap.com/images/feedback-img.jpg") ;
    background-repeat:no-repeat;
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
    width: 150px;

    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 20px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
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

</style>


</head>
<body> 
  <form  id="form-plan-etude" method="post" action="PlanEtude.jsp">
 
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
                                              <li><a href="config.html">suivre les affectations</a></li>
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
                                                           <li><a   href="Connexion.jsp">déconnexion </a></li>
                                                     </ul>
                                              
                                                </li>
                                                <!--   <li>  <input type="text" name="search" placeholder="Search.." ></li>
-->
                   </ul>
   </nav>             
</div>
</header>
<section class="container-fluid banner">
<div class=ban>
</div>
<div class="inner-banner">
<h1>Plan d'etude -département informatique </h1>
<label class='label-des' id='btn-choose-filiere'>choisir la filière :
 <select name="filier">
			    <option value="" selected disabled hidden>Choose here</option>
				<option value="LF1 INFO">LF1 INFO</option>
				<option value="LF2 INFO">LF2 INFO</option>
				<option value="LF3 INFO">LF3 INFO</option>
					<option value="LA1 INFO">LA1 INFO</option>
				<option value="LA2 INFO">LA2 INFO</option>
				<option value="LA3 INFO">LA3 INFO</option>
		 
			</select>
			
			
			<!--<input type="text" name="filiere"> --->
							<button name="btn-shoose" class="btn-shoose" onclick="">choisir </button>

<hr>
   
   <%
 try{
 			
 			//out.println("<form id=\"form-plan-etude\">");

 
 					String filiere=request.getParameter("filier");
 				   System.out.println(filiere);
 				 		if (request.getParameter("btn-shoose")!=null) {
 				 			if(filiere.equals("LF1 INFO")){
 			  Connection cnx=null;
 			 	Statement st=null;
 			ResultSet rst=null;
 			
 			
 			//String x="barry";
 			
  				//Matiere m=new Matiere();
				 Connexion conn=new Connexion();
				 cnx=conn.getCnx();
				 System.out.println(conn==null);
				  //List<Matiere>  lst=new ArrayList<>();
				 //lst=conn.showPlanEtude();
				//System.out.println(lst.size());
			   //System.out.println(lst.size()); 
			
			  st=cnx.createStatement();
       rst=st.executeQuery("select * from matiere m,semestre s where (m.id_matiere=s.id_matiere) and (s.id_semestre='S1' or s.id_semestre='S2');");
       out.println("<table width=100% border=\"3\">\r\n" + 
				"   <tr>\r\n" + 
				"       <td colspan=\"2\">ELÉMENT CONSTITUTIF D'UE (ECUE)</td>\r\n" + 
				"       <td colspan=\"1\">Semestre</td>\r\n" + 
				"       <td colspan=\"4\">VOLUME HORAIRE SEMESTRIEL\r\n" + 
				" (14 SEMAINES)</td>\r\n" + 
				"       <td colspan=\"2\">CRÉDITS</td>\r\n" + 
				"       <td colspan=\"2\">COEFFICIENTS</td>\r\n" + 
				"       <td colspan=\"2\">	RÉGIME D'EXAMEN</td>\r\n" + 
				"   </tr>\r\n" + 
				"   <tr>\r\n" + 
				"        <td></td>\r\n" + 
				"        <td></td>\r\n" + 
				"       \r\n" + 
				"    \r\n" + 
				"        <td></td>\r\n" + 
				"          \r\n" + 
				"        <td> COURS</td>\r\n" + 
				"        <td>T.D.</td>\r\n" + 
				"        <td>T.P.</td>\r\n" + 
				"        <td>C.I</td>\r\n" + 
				"        \r\n" + 
				"    \r\n" + 
				"        <td>ECUE</td>\r\n" + 
				"        <td>UE</td>\r\n" + 
				"         \r\n" + 
				"   \r\n" + 
				"        <td>ECUE</td>\r\n" + 
				"        <td>UE</td>\r\n" + 
				"       \r\n" + 
				"  \r\n" + 
				"        <td>CONTRÔLE CONTINU</td>\r\n" + 
				"        <td>RÉGIME MIXTE</td>\r\n" + 
				"       \r\n" + 
				"   </tr>\r\n"); 
       while(rst.next()){     
    String nom=rst.getString("nom_matiere");
    String unite=rst.getString("id_unite");
	int cours=rst.getInt("cours");
	int td=rst.getInt("td");
	int tp=rst.getInt("tp");          
	int ci=rst.getInt("ci");
	int credit=rst.getInt("CREDIT_ECUE");
	int coef=rst.getInt("COEF_ECUE");
	String controle=rst.getString("CONTROLE CONTINU");
	String regime=rst.getString("REGIME MIXTE");
	 String semestre=rst.getString("id_semestre");
	System.out.println(nom);
 
			//if(filiere.equals("LF1 INFO")){
		 // out.println("<form  class=form-plan-etude>");
 			//	out.println("<table border=\"3\">\r\n" + 
		 			// "   <tr>\r\n" ); 
 			
 			
 			
 			
		 				out.println( "<tr>\r\n" + 
						"        <td>"+unite+"</td>\r\n" + 
						"        <td>"+nom+"</td>\r\n" + 
						"       \r\n" + 
						"    \r\n" + 
						"        <td>"+semestre+"</td>\r\n" + 
						"          \r\n" + 
						"        <td> "+cours+"</td>\r\n" + 
						"        <td>"+td+"</td>\r\n" + 
						"        <td>"+tp+"</td>\r\n" + 
						"        <td>"+ci+"</td>\r\n" + 
						"        \r\n" + 
						"    \r\n" + 
						"        <td>"+credit+"</td>\r\n" + 
						"        <td>"+coef+"</td>\r\n" + 
						"         \r\n" + 
						"   \r\n" + 
						"        <td>"+credit+"</td>\r\n" + 
						"        <td>"+coef+"</td>\r\n" + 
						"       \r\n" + 
						"  \r\n" + 
						"        <td>"+controle+"</td>\r\n" + 
						"        <td>"+regime+"</td>\r\n" + 
						"       \r\n" + 
						"   </tr>\r\n");
			}
				
			}
			else if(filiere.equals("LF2 INFO")){
 		 			  Connection cnx=null;
		 			 	Statement st=null;
		 			ResultSet rst=null;
		 			
		 			
		 			//String x="barry";
		 			
		  				//Matiere m=new Matiere();
						 Connexion conn=new Connexion();
						 cnx=conn.getCnx();
						 System.out.println(conn==null);
						  //List<Matiere>  lst=new ArrayList<>();
						 //lst=conn.showPlanEtude();
						//System.out.println(lst.size());
					   //System.out.println(lst.size()); 
					
					  st=cnx.createStatement();
		       rst=st.executeQuery("select * from matiere m,semestre s where (m.id_matiere=s.id_matiere) and (s.id_semestre='S3' or s.id_semestre='S4');");
		       out.println("<table width=100% border=\"3\">\r\n" + 
						"   <tr>\r\n" + 
						"       <td colspan=\"2\">ELÉMENT CONSTITUTIF D'UE (ECUE)</td>\r\n" + 
						"       <td colspan=\"1\">semestre</td>\r\n" + 
						"       <td colspan=\"4\">VOLUME HORAIRE SEMESTRIEL\r\n" + 
						" (14 SEMAINES)</td>\r\n" + 
						"       <td colspan=\"2\">CRÉDITS</td>\r\n" + 
						"       <td colspan=\"2\">COEFFICIENTS</td>\r\n" + 
						"       <td colspan=\"2\">	RÉGIME D'EXAMEN</td>\r\n" + 
						"   </tr>\r\n" + 
						"   <tr>\r\n" + 
						"        <td></td>\r\n" + 
						"        <td></td>\r\n" + 
						"       \r\n" + 
						"    \r\n" + 
						"        <td></td>\r\n" + 
						"          \r\n" + 
						"        <td> COURS</td>\r\n" + 
						"        <td>T.D.</td>\r\n" + 
						"        <td>T.P.</td>\r\n" + 
						"        <td>C.I</td>\r\n" + 
						"        \r\n" + 
						"    \r\n" + 
						"        <td>ECUE</td>\r\n" + 
						"        <td>UE</td>\r\n" + 
						"         \r\n" + 
						"   \r\n" + 
						"        <td>ECUE</td>\r\n" + 
						"        <td>UE</td>\r\n" + 
						"       \r\n" + 
						"  \r\n" + 
						"        <td>CONTRÔLE CONTINU</td>\r\n" + 
						"        <td>RÉGIME MIXTE</td>\r\n" + 
						"       \r\n" + 
						"   </tr>\r\n"); 
		       while(rst.next()){     
		    String nom=rst.getString("nom_matiere");
		    String unite=rst.getString("id_unite");
			int cours=rst.getInt("cours");
			int td=rst.getInt("td");
			int tp=rst.getInt("tp");          
			int ci=rst.getInt("ci");
			int credit=rst.getInt("CREDIT_ECUE");
			int coef=rst.getInt("COEF_ECUE");
			String controle=rst.getString("CONTROLE CONTINU");
			String regime=rst.getString("REGIME MIXTE");
			String semestre=rst.getString("id_semestre");
			System.out.println(nom);
		 
					//if(filiere.equals("LF1 INFO")){
				 // out.println("<form  class=form-plan-etude>");
		 			//	out.println("<table border=\"3\">\r\n" + 
				 			// "   <tr>\r\n" ); 
		 			
		 			
		 			
		 			
				 				out.println( "<tr>\r\n" + 
								"        <td>"+unite+"</td>\r\n" + 
								"        <td>"+nom+"</td>\r\n" + 
								"       \r\n" + 
				 				"    \r\n" + 
								"        <td>"+semestre+"</td>\r\n" + 
								"          \r\n" + 
								"        <td> "+cours+"</td>\r\n" + 
								"        <td>"+td+"</td>\r\n" + 
								"        <td>"+tp+"</td>\r\n" + 
								"        <td>"+ci+"</td>\r\n" + 
								"        \r\n" + 
								"    \r\n" + 
								"        <td>"+credit+"</td>\r\n" + 
								"        <td>"+coef+"</td>\r\n" + 
								"         \r\n" + 
								"   \r\n" + 
								"        <td>"+credit+"</td>\r\n" + 
								"        <td>"+coef+"</td>\r\n" + 
								"       \r\n" + 
								"  \r\n" + 
								"        <td>"+controle+"</td>\r\n" + 
								"        <td>"+regime+"</td>\r\n" + 
								"       \r\n" + 
								"   </tr>\r\n");
					}
						 

			}

			else if(filiere.equals("LF3 INFO")){
	 			  Connection cnx=null;
	 			 	Statement st=null;
	 			ResultSet rst=null;
	 			
	 			
	 			//String x="barry";
	 			
	  				//Matiere m=new Matiere();
					 Connexion conn=new Connexion();
					 cnx=conn.getCnx();
					 System.out.println(conn==null);
					  //List<Matiere>  lst=new ArrayList<>();
					 //lst=conn.showPlanEtude();
					//System.out.println(lst.size());
				   //System.out.println(lst.size()); 
				
				  st=cnx.createStatement();
	       rst=st.executeQuery("select * from matiere m,semestre s where (m.id_matiere=s.id_matiere) and (s.id_semestre='S5' or s.id_semestre='S6');");
	       out.println("<table width=100% border=\"3\">\r\n" + 
					"   <tr>\r\n" + 
					"       <td colspan=\"2\">ELÉMENT CONSTITUTIF D'UE (ECUE)</td>\r\n" + 
					"       <td colspan=\"1\">semestre</td>\r\n" + 
					"       <td colspan=\"4\">VOLUME HORAIRE SEMESTRIEL\r\n" + 
					" (14 SEMAINES)</td>\r\n" + 
					"       <td colspan=\"2\">CRÉDITS</td>\r\n" + 
					"       <td colspan=\"2\">COEFFICIENTS</td>\r\n" + 
					"       <td colspan=\"2\">	RÉGIME D'EXAMEN</td>\r\n" + 
					"   </tr>\r\n" + 
					"   <tr>\r\n" + 
					"        <td></td>\r\n" + 
					"        <td></td>\r\n" + 
					"       \r\n" + 
					"    \r\n" + 
					"        <td></td>\r\n" + 
					"          \r\n" + 
					"        <td> COURS</td>\r\n" + 
					"        <td>T.D.</td>\r\n" + 
					"        <td>T.P.</td>\r\n" + 
					"        <td>C.I</td>\r\n" + 
					"        \r\n" + 
					"    \r\n" + 
					"        <td>ECUE</td>\r\n" + 
					"        <td>UE</td>\r\n" + 
					"         \r\n" + 
					"   \r\n" + 
					"        <td>ECUE</td>\r\n" + 
					"        <td>UE</td>\r\n" + 
					"       \r\n" + 
					"  \r\n" + 
					"        <td>CONTRÔLE CONTINU</td>\r\n" + 
					"        <td>RÉGIME MIXTE</td>\r\n" + 
					"       \r\n" + 
					"   </tr>\r\n"); 
	       while(rst.next()){     
	    String nom=rst.getString("nom_matiere");
	    String unite=rst.getString("id_unite");
		int cours=rst.getInt("cours");
		int td=rst.getInt("td");
		int tp=rst.getInt("tp");          
		int ci=rst.getInt("ci");
		int credit=rst.getInt("CREDIT_ECUE");
		int coef=rst.getInt("COEF_ECUE");
		String controle=rst.getString("CONTROLE CONTINU");
		String regime=rst.getString("REGIME MIXTE");
		String semestre=rst.getString("id_semestre");
		System.out.println(nom);
	 
				//if(filiere.equals("LF1 INFO")){
			 // out.println("<form  class=form-plan-etude>");
	 			//	out.println("<table border=\"3\">\r\n" + 
			 			// "   <tr>\r\n" ); 
	 			
	 			
	 			
	 			
			 				out.println( "<tr>\r\n" + 
							"        <td>"+unite+"</td>\r\n" + 
							"        <td>"+nom+"</td>\r\n" + 
							"       \r\n" + 
							"    \r\n" + 
							"        <td>"+semestre+"</td>\r\n" +  
							"          \r\n" + 
							"        <td> "+cours+"</td>\r\n" + 
							"        <td>"+td+"</td>\r\n" + 
							"        <td>"+tp+"</td>\r\n" + 
							"        <td>"+ci+"</td>\r\n" + 
							"        \r\n" + 
							"    \r\n" + 
							"        <td>"+credit+"</td>\r\n" + 
							"        <td>"+coef+"</td>\r\n" + 
							"         \r\n" + 
							"   \r\n" + 
							"        <td>"+credit+"</td>\r\n" + 
							"        <td>"+coef+"</td>\r\n" + 
							"       \r\n" + 
							"  \r\n" + 
							"        <td>"+controle+"</td>\r\n" + 
							"        <td>"+regime+"</td>\r\n" + 
							"       \r\n" + 
							"   </tr>\r\n");
				}
					 

		}


 				 		
	       else 	if(filiere.equals("LA1 INFO")){
	 			  Connection cnx=null;
	 			 	Statement st=null;
	 			ResultSet rst=null;
	 			
	 			
	 			//String x="barry";
	 			
	  				//Matiere m=new Matiere();
	  				ConnexionLA connLA=new ConnexionLA();
					 cnx=connLA.getCnx();
					 System.out.println(connLA==null);
					  //List<Matiere>  lst=new ArrayList<>();
					 //lst=conn.showPlanEtude();
					//System.out.println(lst.size());
				   //System.out.println(lst.size()); 
				
				  st=cnx.createStatement();
	       rst=st.executeQuery("select * from matiere m,semestre s where (m.id_matiere=s.id_matiere) and (s.id_semestre='S1' or s.id_semestre='S2');");
	       out.println("<table width=100%  border=\"3\">\r\n" + 
					"   <tr>\r\n" + 
					"       <td colspan=\"2\">ELÉMENT CONSTITUTIF D'UE (ECUE)</td>\r\n" + 
					"       <td colspan=\"1\">Semestre</td>\r\n" + 
					"       <td colspan=\"4\">VOLUME HORAIRE SEMESTRIEL\r\n" + 
					" (14 SEMAINES)</td>\r\n" + 
					"       <td colspan=\"2\">CRÉDITS</td>\r\n" + 
					"       <td colspan=\"2\">COEFFICIENTS</td>\r\n" + 
					"       <td colspan=\"2\">	RÉGIME D'EXAMEN</td>\r\n" + 
					"   </tr>\r\n" + 
					"   <tr>\r\n" + 
					"        <td></td>\r\n" + 
					"        <td></td>\r\n" + 
					"       \r\n" + 
					"    \r\n" + 
					"        <td></td>\r\n" + 
					"          \r\n" + 
					"        <td> COURS</td>\r\n" + 
					"        <td>T.D.</td>\r\n" + 
					"        <td>T.P.</td>\r\n" + 
					"        <td>C.I</td>\r\n" + 
					"        \r\n" + 
					"    \r\n" + 
					"        <td>ECUE</td>\r\n" + 
					"        <td>UE</td>\r\n" + 
					"         \r\n" + 
					"   \r\n" + 
					"        <td>ECUE</td>\r\n" + 
					"        <td>UE</td>\r\n" + 
					"       \r\n" + 
					"  \r\n" + 
					"        <td>CONTRÔLE CONTINU</td>\r\n" + 
					"        <td>RÉGIME MIXTE</td>\r\n" + 
					"       \r\n" + 
					"   </tr>\r\n"); 
	       while(rst.next()){     
	    String nom=rst.getString("nom_matiere");
	    String unite=rst.getString("id_unite");
		int cours=rst.getInt("cours");
		int td=rst.getInt("td");
		int tp=rst.getInt("tp");          
		int ci=rst.getInt("ci");
		int credit=rst.getInt("CREDIT_ECUE");
		int coef=rst.getInt("COEF_ECUE");
		String controle=rst.getString("CONTROLE CONTINU");
		String regime=rst.getString("REGIME MIXTE");
		 String semestre=rst.getString("id_semestre");
		System.out.println(nom);
	 
				//if(filiere.equals("LF1 INFO")){
			 // out.println("<form  class=form-plan-etude>");
	 			//	out.println("<table border=\"3\">\r\n" + 
			 			// "   <tr>\r\n" ); 
	 			
	 			
	 			
	 			
			 				out.println( "<tr>\r\n" + 
							"        <td>"+unite+"</td>\r\n" + 
							"        <td>"+nom+"</td>\r\n" + 
							"       \r\n" + 
							"    \r\n" + 
							"        <td>"+semestre+"</td>\r\n" + 
							"          \r\n" + 
							"        <td> "+cours+"</td>\r\n" + 
							"        <td>"+td+"</td>\r\n" + 
							"        <td>"+tp+"</td>\r\n" + 
							"        <td>"+ci+"</td>\r\n" + 
							"        \r\n" + 
							"    \r\n" + 
							"        <td>"+credit+"</td>\r\n" + 
							"        <td>"+coef+"</td>\r\n" + 
							"         \r\n" + 
							"   \r\n" + 
							"        <td>"+credit+"</td>\r\n" + 
							"        <td>"+coef+"</td>\r\n" + 
							"       \r\n" + 
							"  \r\n" + 
							"        <td>"+controle+"</td>\r\n" + 
							"        <td>"+regime+"</td>\r\n" + 
							"       \r\n" + 
							"   </tr>\r\n");
				}
					
				}
	       else 	if(filiere.equals("LA2 INFO")){
	 			  Connection cnx=null;
	 			 	Statement st=null;
	 			ResultSet rst=null;
	 			
	 			
	 			//String x="barry";
	 			
	  				//Matiere m=new Matiere();
	  				ConnexionLA connLA=new ConnexionLA();
					 cnx=connLA.getCnx();
					 System.out.println(connLA==null);
					  //List<Matiere>  lst=new ArrayList<>();
					 //lst=conn.showPlanEtude();
					//System.out.println(lst.size());
				   //System.out.println(lst.size()); 
				
				  st=cnx.createStatement();
	       rst=st.executeQuery("select * from matiere m,semestre s where (m.id_matiere=s.id_matiere) and (s.id_semestre='S3' or s.id_semestre='S4');");
	       out.println("<table width=100%  border=\"3\">\r\n" + 
					"   <tr>\r\n" + 
					"       <td colspan=\"2\">ELÉMENT CONSTITUTIF D'UE (ECUE)</td>\r\n" + 
					"       <td colspan=\"1\">Semestre</td>\r\n" + 
					"       <td colspan=\"4\">VOLUME HORAIRE SEMESTRIEL\r\n" + 
					" (14 SEMAINES)</td>\r\n" + 
					"       <td colspan=\"2\">CRÉDITS</td>\r\n" + 
					"       <td colspan=\"2\">COEFFICIENTS</td>\r\n" + 
					"       <td colspan=\"2\">	RÉGIME D'EXAMEN</td>\r\n" + 
					"   </tr>\r\n" + 
					"   <tr>\r\n" + 
					"        <td></td>\r\n" + 
					"        <td></td>\r\n" + 
					"       \r\n" + 
					"    \r\n" + 
					"        <td></td>\r\n" + 
					"          \r\n" + 
					"        <td> COURS</td>\r\n" + 
					"        <td>T.D.</td>\r\n" + 
					"        <td>T.P.</td>\r\n" + 
					"        <td>C.I</td>\r\n" + 
					"        \r\n" + 
					"    \r\n" + 
					"        <td>ECUE</td>\r\n" + 
					"        <td>UE</td>\r\n" + 
					"         \r\n" + 
					"   \r\n" + 
					"        <td>ECUE</td>\r\n" + 
					"        <td>UE</td>\r\n" + 
					"       \r\n" + 
					"  \r\n" + 
					"        <td>CONTRÔLE CONTINU</td>\r\n" + 
					"        <td>RÉGIME MIXTE</td>\r\n" + 
					"       \r\n" + 
					"   </tr>\r\n"); 
	       while(rst.next()){     
	    String nom=rst.getString("nom_matiere");
	    String unite=rst.getString("id_unite");
		int cours=rst.getInt("cours");
		int td=rst.getInt("td");
		int tp=rst.getInt("tp");          
		int ci=rst.getInt("ci");
		int credit=rst.getInt("CREDIT_ECUE");
		int coef=rst.getInt("COEF_ECUE");
		String controle=rst.getString("CONTROLE CONTINU");
		String regime=rst.getString("REGIME MIXTE");
		 String semestre=rst.getString("id_semestre");
		System.out.println(nom);
	 
				//if(filiere.equals("LF1 INFO")){
			 // out.println("<form  class=form-plan-etude>");
	 			//	out.println("<table border=\"3\">\r\n" + 
			 			// "   <tr>\r\n" ); 
	 			
	 			
	 			
	 			
			 				out.println( "<tr>\r\n" + 
							"        <td>"+unite+"</td>\r\n" + 
							"        <td>"+nom+"</td>\r\n" + 
							"       \r\n" + 
							"    \r\n" + 
							"        <td>"+semestre+"</td>\r\n" + 
							"          \r\n" + 
							"        <td> "+cours+"</td>\r\n" + 
							"        <td>"+td+"</td>\r\n" + 
							"        <td>"+tp+"</td>\r\n" + 
							"        <td>"+ci+"</td>\r\n" + 
							"        \r\n" + 
							"    \r\n" + 
							"        <td>"+credit+"</td>\r\n" + 
							"        <td>"+coef+"</td>\r\n" + 
							"         \r\n" + 
							"   \r\n" + 
							"        <td>"+credit+"</td>\r\n" + 
							"        <td>"+coef+"</td>\r\n" + 
							"       \r\n" + 
							"  \r\n" + 
							"        <td>"+controle+"</td>\r\n" + 
							"        <td>"+regime+"</td>\r\n" + 
							"       \r\n" + 
							"   </tr>\r\n");
				}
					
				}
	       else 	if(filiere.equals("LA3 INFO")){
	 			  Connection cnx=null;
	 			 	Statement st=null;
	 			ResultSet rst=null;
	 			
	 			
	 			//String x="barry";
	 			
	  				//Matiere m=new Matiere();
	  				ConnexionLA connLA=new ConnexionLA();
					
					 cnx=connLA.getCnx();
					 System.out.println(connLA==null);
					  //List<Matiere>  lst=new ArrayList<>();
					 //lst=conn.showPlanEtude();
					//System.out.println(lst.size());
				   //System.out.println(lst.size()); 
				
				  st=cnx.createStatement();
	       rst=st.executeQuery("select * from matiere m,semestre s where (m.id_matiere=s.id_matiere) and (s.id_semestre='S5' );");
	       out.println("<table width=100%  border=\"3\">\r\n" + 
					"   <tr>\r\n" + 
					"       <td colspan=\"2\">ELÉMENT CONSTITUTIF D'UE (ECUE)</td>\r\n" + 
					"       <td colspan=\"1\">Semestre</td>\r\n" + 
					"       <td colspan=\"4\">VOLUME HORAIRE SEMESTRIEL\r\n" + 
					" (14 SEMAINES)</td>\r\n" + 
					"       <td colspan=\"2\">CRÉDITS</td>\r\n" + 
					"       <td colspan=\"2\">COEFFICIENTS</td>\r\n" + 
					"       <td colspan=\"2\">	RÉGIME D'EXAMEN</td>\r\n" + 
					"   </tr>\r\n" + 
					"   <tr>\r\n" + 
					"        <td></td>\r\n" + 
					"        <td></td>\r\n" + 
					"       \r\n" + 
					"    \r\n" + 
					"        <td></td>\r\n" + 
					"          \r\n" + 
					"        <td> COURS</td>\r\n" + 
					"        <td>T.D.</td>\r\n" + 
					"        <td>T.P.</td>\r\n" + 
					"        <td>C.I</td>\r\n" + 
					"        \r\n" + 
					"    \r\n" + 
					"        <td>ECUE</td>\r\n" + 
					"        <td>UE</td>\r\n" + 
					"         \r\n" + 
					"   \r\n" + 
					"        <td>ECUE</td>\r\n" + 
					"        <td>UE</td>\r\n" + 
					"       \r\n" + 
					"  \r\n" + 
					"        <td>CONTRÔLE CONTINU</td>\r\n" + 
					"        <td>RÉGIME MIXTE</td>\r\n" + 
					"       \r\n" + 
					"   </tr>\r\n"); 
	       while(rst.next()){     
	    String nom=rst.getString("nom_matiere");
	    String unite=rst.getString("id_unite");
		int cours=rst.getInt("cours");
		int td=rst.getInt("td");
		int tp=rst.getInt("tp");          
		int ci=rst.getInt("ci");
		int credit=rst.getInt("CREDIT_ECUE");
		int coef=rst.getInt("COEF_ECUE");
		String controle=rst.getString("CONTROLE CONTINU");
		String regime=rst.getString("REGIME MIXTE");
		 String semestre=rst.getString("id_semestre");
		System.out.println(nom);
	 
				//if(filiere.equals("LF1 INFO")){
			 // out.println("<form  class=form-plan-etude>");
	 			//	out.println("<table border=\"3\">\r\n" + 
			 			// "   <tr>\r\n" ); 
	 			
	 			
	 			
	 			
			 				out.println( "<tr>\r\n" + 
							"        <td>"+unite+"</td>\r\n" + 
							"        <td>"+nom+"</td>\r\n" + 
							"       \r\n" + 
							"    \r\n" + 
							"        <td>"+semestre+"</td>\r\n" + 
							"          \r\n" + 
							"        <td> "+cours+"</td>\r\n" + 
							"        <td>"+td+"</td>\r\n" + 
							"        <td>"+tp+"</td>\r\n" + 
							"        <td>"+ci+"</td>\r\n" + 
							"        \r\n" + 
							"    \r\n" + 
							"        <td>"+credit+"</td>\r\n" + 
							"        <td>"+coef+"</td>\r\n" + 
							"         \r\n" + 
							"   \r\n" + 
							"        <td>"+credit+"</td>\r\n" + 
							"        <td>"+coef+"</td>\r\n" + 
							"       \r\n" + 
							"  \r\n" + 
							"        <td>"+controle+"</td>\r\n" + 
							"        <td>"+regime+"</td>\r\n" + 
							"       \r\n" + 
							"   </tr>\r\n");
				}
					
				}
 				 			}
		
	       }catch(Exception e){
	    	   
	    e.printStackTrace();}

 			
 			
 		
 		
   
 				 		 
   %>
   
   
   
   </table>


		</div>
		

			<br>

</section>

<section class="container-fluid about">

</section>
<section class="container-fluid portfolio">

</section>

<footer class="container-fluid footer">
<strong>Developed by </strong>
</footer>

</form>
</body>
</html>﻿



