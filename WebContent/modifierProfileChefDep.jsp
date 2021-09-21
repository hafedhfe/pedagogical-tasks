 <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en-US">
<head> 
<meta >
  <link rel="shortcut icon" href="http://designshack.net/favicon.ico">
  <link rel="icon" href="http://designshack.net/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="css/stylesEdit.css">
  <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>Parametre profile de chef de département  </title>
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
<br>
<br>
<form action="modifierProfileChefDep.jsp">
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>

  <div id="topbar">
   </div>
  
  <div id="w">
    <div id="content" class="clearfix">
      <div id="userphoto"><img src="images/user.png" alt="user"></div>
      <h1>Profile (chef de département) </h1>

      <nav id="profiletabs">
        <ul class="clearfix">
         
 
 <section id="settings" >
        <p><h2>Editer vos informations:</h2></p>
       <!--   <p class="setting"><span>Nom  <button type="button" onclick="toggle_div(this,'id_nom');"><img src="images/edit.png" alt="*Edit*"></button>
 </span> Içi le nom du chef de département</p>
<div id="id_nom" style="visibility:hidden;">
<input type="text" placeholder="introduire votre nom" name="ztnom">
</div>
        
        <p class="setting"><span>Addresse E-mail    <button type="button" onclick="toggle_div(this,'id_mail');"><img src="images/edit.png" alt="*Edit*"></button>
 </span>Içi l'e-mail du chef de département</p>
        <div id="id_mail" style="visibility:hidden;">
<input type="text" placeholder="introduire votre email" name="ztmail">
</div>-->
       <center> <p class="setting">mot de passe   <button type="button" onclick="toggle_div(this,'id_pwd');"><img src="images/edit.png" alt="*Edit*"></button>
   <input type="password" placeholder="introduire un nouveau mot de passe" name="ztpwd" required="required"></p></center>
         <div id="id_pwd" style="visibility:hidden;">
         


</div>
    <center>  <button name="btn-valider-changement" value="Valider les changement !">Valider les changement !</center>

   </section> 
   </ul>
      </nav>
     
    </div><!-- @end #content -->
  </div><!-- @end #w -->

 <!-- Le JS... -->
<script type="text/javascript">
function toggle_div(bouton, id) { // On déclare la fonction toggle_div qui prend en param le bouton et un id
  var div = document.getElementById(id); // On récupère le div ciblé grâce à l'id
  
  if (div.style.visibility=="hidden")
	{
		// Contenu caché, le montrer
		div.style.visibility = "visible";
		div.style.height = "auto";			// Optionnel rétablir la hauteur
	}
	else
	{
		// Contenu visible, le cacher
		div.style.visibility = "hidden";
		 	 
	}
}
</script>




<%



//PreparedStatement ps  =null;
Statement ps=null;
Connection cnx=null;
ResultSet rst1=null;
String mail=null;
String nom=null;
 String pwd=null;
int x=0;
int y=0;
  
int updateQuery = 0;
try {
	Class.forName("com.mysql.jdbc.Driver");
    System.out.println("driver sava sava!");

	cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb","root","");
    System.out.println("connnexion sava!");


  //nom=request.getParameter("ztnom");
  //mail=request.getParameter("ztmail");
  pwd=request.getParameter("ztpwd");
 //System.out.println(mail);
 System.out.println(pwd);
String req1="UPDATE loginchef SET nom= ? ,email= ? ,password= ? ;";
String req2="UPDATE loginchef SET password=? ;";

//if(nom.equals("")){
 ps = cnx.createStatement();
	  
	//ps.setString(1,pwd);	  

  x=ps.executeUpdate("update loginchef set password='"+pwd+"';");
 
/* }else{
	ps = cnx.prepareStatement("update loginchef set nom ='"+nom+"' , email = '"+mail+"', password ='"+pwd+"';");
	//ps.setString(1, nom);	
	//ps.setString(2, mail);	  
	//ps.setString(3, pwd);	  

   y=ps.executeUpdate("update loginchef set nom ='"+nom+"' , email = '"+mail+"', password ='"+pwd+"';");	
	
	
}*/
 
if((x>0)){
	out.println( "<h1 align=center >profile est modifié avec succée</h1>");
	
	
}
else{
	out.println( "<h1 align=center >aucune modification est effectuée !</h1>");

}

}
catch(Exception e){e.printStackTrace();}






%>
</form>
</body>
</html>