<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
  <meta charset="UTF-8"> 
  <title>Paramétrage Semestre</title>
 <style type="text/css">

body{
  background:#999;
    background-image: url("images/feedback-img.jpg");
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
    width: 10%;
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
   <div id="divId"></div>  

 <%
 
 Connection cnx=null;
	//PrintWriter pw=response.getWriter();
	 PreparedStatement pstatement = null,st=null;
	 ResultSet rst=null;
	int updateQuery = 0;
	try {
		Class.forName("com.mysql.jdbc.Driver");
	    System.out.println("driver sava sava!");

		cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb","root","");
	    System.out.println("connnexion sava!");


	String fil1="LF1 INFO";
    System.out.println(fil1);
    String fil2="LF2 INFO";
    System.out.println(fil2);
    String fil3="LF3 INFO";
    System.out.println(fil3);
    String fil4="LA1 INFO";
    System.out.println(fil4);
    String fil5="LA2 INFO";
    System.out.println(fil5);
    String fil6="LA3 INFO";
    System.out.println(fil6);
    String fil7="MGL1 INFO";
    System.out.println(fil7);
    String fil8="MGL2 INFO";
    System.out.println(fil8);
    

	String S1=request.getParameter("lf1");
    System.out.println(S1);
    String S2=request.getParameter("lf2");
    System.out.println(S2);
    String S3=request.getParameter("lf3");
    System.out.println(S3);
    String S4=request.getParameter("la1");
    System.out.println(S4);
    String S5=request.getParameter("la2");
    System.out.println(S5);
    String S6=request.getParameter("la3");
    System.out.println(S6);
    String S7=request.getParameter("mgl1");
    System.out.println(S7);
    String S8=request.getParameter("mgl2");
    System.out.println(S8);
    
    
    
    
    String TD1=request.getParameter("tdlf1");
    System.out.println(TD1);
    String TD2=request.getParameter("tdlf2");
    System.out.println(TD2);
    String TD3=request.getParameter("tdlf3");
    System.out.println(TD3);
    String TD4=request.getParameter("tdla1");
    System.out.println(TD4);
    String TD5=request.getParameter("tdla2");
    System.out.println(TD5);
    String TD6=request.getParameter("tdla3");
    System.out.println(TD6);
    String TD7=request.getParameter("tdmgl1");
    System.out.println(TD7);
    String TD8=request.getParameter("tdmgl2");
    System.out.println(TD8);

	
    String Tp1=request.getParameter("tplf1");
    System.out.println(TD1);
    String Tp2=request.getParameter("tplf2");
    System.out.println(TD2);
    String Tp3=request.getParameter("tplf3");
    System.out.println(TD3);
    String Tp4=request.getParameter("tpla1");
    System.out.println(TD4);
    String Tp5=request.getParameter("tpla2");
    System.out.println(TD5);
    String Tp6=request.getParameter("tpla3");
    System.out.println(TD6);
    String Tp7=request.getParameter("tpmgl1");
    System.out.println(TD7);
    String Tp8=request.getParameter("tpmgl2");
    System.out.println(TD8);

	// sql query to insert values in the secified table.
	String queryString ="INSERT INTO configsemestre(filiere,section,td,tp) VALUES (?,?,?,?),(?,?,?,?),(?,?,?,?),(?,?,?,?),(?,?,?,?),(?,?,?,?),(?,?,?,?),(?,?,?,?)";
	        /* createStatement() is used for create statement
	object that is used for 
	  sending sql statements to the specified database. */ 
	  String req="select * from configsemestre;";
	pstatement = cnx.prepareStatement(queryString);
	            pstatement.setString(1,fil1);
	            pstatement.setString(2,S1);
	            pstatement.setString(3,TD1);
	            pstatement.setString(4,Tp1);
	            pstatement.setString(5,fil2);
	            pstatement.setString(6,S2);
	            pstatement.setString(7,TD2);
	            pstatement.setString(8,Tp2);
	            pstatement.setString(9,fil3);
	            pstatement.setString(10,S3);
	            pstatement.setString(11,TD3);
	            pstatement.setString(12,Tp3);
	            pstatement.setString(13,fil4);
	            pstatement.setString(14,S4);
	            pstatement.setString(15,TD4);
	            pstatement.setString(16,Tp4);
	            pstatement.setString(17,fil5);
	            pstatement.setString(18,S5);
	            pstatement.setString(19,TD5);
	            pstatement.setString(20,Tp5);
	            pstatement.setString(21,fil6);
	            pstatement.setString(22,S6);
	            pstatement.setString(23,TD6);
	            pstatement.setString(24,Tp6);
	            pstatement.setString(25,fil7);
	            pstatement.setString(26,S7);
	            pstatement.setString(27,TD7);
	            pstatement.setString(28,Tp7);
	            pstatement.setString(29,fil8);
	            pstatement.setString(30,S8);
	            pstatement.setString(31,TD8);
	            pstatement.setString(32,Tp8);
	            String btn=request.getParameter("validatebtn");
	            updateQuery = pstatement.executeUpdate();
                
	             st=cnx.prepareStatement(req);
	             rst=st.executeQuery();
	             out.println("<h1 align=center>votre configuration de semestre</h1> <table align=left   cellpadding=10 style=width:95% border=2 >"+
	            		 "<td><label> semestre </label> </td>"+
	            	     "<td><label  >Filiere    </label></td>"+
	            		 "<td><label  >NbSection   </label></td>"+
	            		 "<td><label >NbTd    </label> </td>"+
	            		 "<td><label  >NbTp   </label></td></tr>");
	             	Date date=new Date();
	             	int mois=date.getMonth();
	             	System.out.println("le mois est"+mois);
	             	String semestre=null;
	             	if(mois<8){
	             		semestre="semestre 2";
	             	}else{
	             		semestre="semestre 1";
	             	}
	               while(rst.next()){

	            	 String fil=rst.getString("filiere");
	            	 int sec=rst.getInt("section");
	            	 int td=rst.getInt("td");
	            	 int tp=rst.getInt("tp");
	            	   out.println(
	  	            		 "<tr><td><label>"+ semestre+" </label> </td>"+
	  	            		 "<td><label  >"+fil +"  </label></td>"+
	  	            		 "<td><label  >"+sec +"  </label></td>"+
	  	            		 "<td><label >"+td  +"  </label> </td>"+
	  	            		 "<td><label  >"+tp +"  </label></td></tr>");
 	                                  }
  
	}catch(Exception e){
		e.printStackTrace();
	}
 
 %>

 
</body>

 


</html>
