<%@page import="java.util.ArrayList"%>
<%@page import="metiers.ConnexionEns"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
/* HttpSession s=request.getSession();
System.out.println((Boolean)session.getAttribute("etat"));
if((Boolean)s.getAttribute("etat")==false){
	RequestDispatcher rd=request.getRequestDispatcher("Connexion.jsp");
	rd.forward(request, response);	
}*/
Connection cnx1=null,cnx2=null;
Statement  ste=null,stm=null;
ResultSet  rste=null,rstm=null;
//String nom_matiere=null;
 PreparedStatement pstatement = null;

int updateQuery = 0;
try {
	Class.forName("com.mysql.jdbc.Driver");
    System.out.println("driver sava sava!");
 
    cnx1=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb","root","");
    System.out.println("connnexion base de donnée enseignant sava!");
   /*  
  //  String requet1 ="select *from fichedevoeux ;";
 String requet1 ="select distinct(f.nom_enseignant),f.nom_matiere, f.id_matiere, f.cours,f.td ,f.filiere,f.niveau,f.specialite,f.grade from fichedevoeux f,fichedevoeux f1 where f1.nom_enseignant=f.nom_enseignant;  ";

   // String requet1 ="select distinct(f.nom_enseignant),m.nom_matiere,m.id_matiere, m.id_enseignant, m.cours,m.td ,m.filiere,m.niveau,f.specialite,f.grade,f.email,f.tel from matiere m,matiere m1,fichedevoeux f where m.id_matiere=f.id_matiere and m.id_enseignant <> m1.id_enseignant;";
    		    st1=cnx1.createStatement();
    rst1=st1.executeQuery(requet1);
    out.println("<h1 align=center>liste des fiches de voeux</h1><br><br><br><br>");
     out.println("<table width=100% border=\"3\">\r\n" + 
			"   <tr>\r\n" + 
			"       <td>nom_enseignant</td>\r\n" + 
			"        <td>grade</td>\r\n" +  
			"        <td>specialite</td>\r\n"+
			"       <td >nom_matiere</td>\r\n" + 
			"       <td >cours en heurs\r\n" + 
			"</td>\r\n" +  
			"       <td>td  en heurs</td>\r\n" + 
			"       <td>filiere</td>\r\n" + 
			"       <td>	niveau</td></tr>\r\n" 		  
		 ); 
 
    while(rst1.next()){     
    	int i =1;
    	   
        String id_matiere=rst1.getString("id_matiere");
        nom_matiere=rst1.getString("nom_matiere");
        
  		//l.add( nom_matiere); 
    	int td=rst1.getInt("td");
    	int cours=rst1.getInt("cours");          
    	String filiere=rst1.getString("filiere");
    	String niveau=rst1.getString("niveau");
    	 String id_enseignant=rst1.getString("nom_enseignant");
    	String specialite=rst1.getString("specialite");
    	String grade=rst1.getString("grade");
    	 
    
    	 out.println( "<tr>\r\n" + 
    			 	 "<td>"+id_enseignant+"</td>\r\n" + 
   					"        <td>"+grade+"</td>\r\n" + 
					"        <td>"+specialite+"</td>\r\n" + 
					"        <td>"+nom_matiere+"</td>\r\n" + 
					"       \r\n" + 
					"    \r\n" + 
					"        <td>"+cours+"</td>\r\n" + 
					"          \r\n" + 
					"        <td> "+td+"</td>\r\n" + 
					"        <td>"+filiere+"</td>\r\n" + 
					"        <td>"+niveau+"</td>\r\n" +
					"     </tr>  \r\n"  
					 
					 );*/
    	/* System.out.println("charge horaire cours prof "+i+" :  "+cours);
    	 i++;
    	 System.out.println(nom_matiere);
    	 System.out.println(td);
    	 System.out.println(cours);
       	 
    	 System.out.println(filiere);
       	 System.out.println(specialite);
    	 System.out.println(grade);*/

String req1="select distinct(nom_enseignant) from fichedevoeuxstatic;";
cnx1=new ConnexionEns().getCnx();
stm=cnx1.createStatement();
	rstm=stm.executeQuery(req1);
	ArrayList<String> list=new ArrayList<String>();
	 out.println("  <center><h1> Liste des fiches de voeux </h1></center>");
	while(rstm.next()){  
String	nom_enseignant=rstm.getString("nom_enseignant");
		  // list.add(nom_matiere); 
		System.out.println("nom de matiere"+nom_enseignant);
		      out.println("<table border=\"3\" width=100% >\r\n" + 
		  			"   <tr>\r\n" + 
		  			"       <td colspan=\"1\">nom_matiere</td>\r\n" + 
		  			 
		  					"       <td colspan=\"1\">filiere</td>\r\n" + 
		  							"       <td colspan=\"1\">niveau</td>\r\n" + 
		  				
		  			"       <td colspan=\"1\">cours en heurs\r\n" + 
		  			"</td>\r\n" + "       <td colspan=\"1\">Td en heurs\r\n" + 
		  			"</td>\r\n" + 
		  			"    </tr>\r\n" );
		      /*----------------------------*/
		         String req2="select nom_matiere,filiere,niveau,cours,td from fichedevoeux where nom_enseignant='"+nom_enseignant+"'";
		  
		   out.println("<h4><u> Enseignant:             "+ nom_enseignant +"</u></h4> ");
		      ste=cnx1.createStatement();
		  	rste=ste.executeQuery(req2);
		  	while(rste.next()){ 
		    	float td=rste.getFloat("td");
		    	float cours=rste.getFloat("cours");          
		    	String filiere=rste.getString("filiere");
		    	float niveau=rste.getInt("niveau");
		    	String nom_matiere=rste.getString("nom_matiere");
		    	System.out.println(nom_enseignant);
		    	System.out.println(filiere);
		    	System.out.println(niveau);
		    	System.out.println(cours);
		    	System.out.println(td);
		    	
		      out.println( "<tr>\r\n" + 
						"        <td>"+nom_matiere+"</td>\r\n" + 
						 
						"        <td>"+filiere+"</td>\r\n" + 
						"        <td>"+niveau+"</td>\r\n" + 
						
						"       \r\n" + 
						"    \r\n" + 
						"        <td>"+cours+"</td>\r\n" + 
						"        <td>"+td+"</td>\r\n" + 
						"          \r\n</tr>" );
		     	
		      
		  	}
		  	 out.println("</table>");
		 
     
    }}
    catch(Exception e){
    	e.printStackTrace();
    }finally{
    	cnx1.close();
    	
    }
%>
</body>
</html>