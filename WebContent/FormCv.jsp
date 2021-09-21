<%@page import="com.itextpdf.text.PageSize"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="com.itextpdf.text.pdf.draw.DottedLineSeparator"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title>Ajouter un Enseignant</title>

<style type="text/css">

body{
  background:#999;
    background-image: url("images/dusk.jpg");
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


body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px; 
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 100%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}

 .div {
    display: none;
  }
</style>
</head>      
<body >
  <form  class="modal-content" method="post" action="">
    <div class="container">
	
      <center><h1>CV</h1></center>
      <p></p> 
      <hr>
     
	   <table align="left"   cellpadding=10 style=width:95% >
  <center><h2> Information Personnelles</h2> </center>
<tr>
<td><label> Nom & prénom</label>
<td><input type="text" placeholder="nom & prénom" name="nom"></td>
</tr>
 
 <td><label ><b>grade</b></label> </td>
 <td><select name="grade" align="right" onChange="changeit(this.value)">

                <option  id="hidden" value="prof">professeur</option>
                <option value="assis">Assistant</option>
                <option value="maitreassis">maitre assistant</option>
                <option value="maitreconf">maitre de conference</option>
                 
            </select></td>
  <div class="div" id="hiddenx"><input type="text" ></div>
   

            <script>
  function changeit(val) {
    document.getElementById("hiddenx").style.display="none";
     
    document.getElementById(val).style.display="block";
  }
</script>

 </tr>
 </table>
 
 <hr>
  <table align="left"   cellpadding=10 style=width:95% >
 <center><h2>Contacts</h2> </center>
<tr>
<td><label> e-mail</label>
<td><input type="text" placeholder=" e-mail" name="mail"></td>
</tr>
<tr>
<td><label> telephone</label>
<td><input type="text" placeholder="telephone" name="tel"></td>
</tr>
<tr>
 <td><label> Adresse </label>
<td><input type="text" placeholder="Adresse" name="adresse"></td>
</tr>
</table>
<hr>

   <table align="left"   cellpadding=10 style=width:95% >
<center><h2 >Formations et diplomes</h2></center>
 <tr>
<td><label><b>habilitations </b></label>
<td><input type="text" placeholder="titre" name="titrehab"></td>
<td> <br>  </td></tr>
 


<br><td><label><b>Thèse </b></label>
<td><input type="text" placeholder="titrethese" name="titreThese"></td>
<td>   </td></tr>
 


<td><label><b>Mastère</b></label>
<td><input type="text" placeholder="titremaster" name="titreMaster"></td>
<td>   </td></tr>
 


</table>

     <!-- <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>-->

      <div class="clearfix">
        
        <button type="submit" class="signupbtn">voir pdf</button>
      </div>
    </div>
  </form>
 


<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<%
Connection cnx=null;
	Statement st=null;
ResultSet rst=null;
try {
	Class.forName("com.mysql.jdbc.Driver");
    System.out.println("driver sava sava!");
 
    cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb","root","");
    System.out.println("connnexion base de donnée enseignant sava!");
     
    response.setContentType("application/pdf");
    String requet1 ="select nom ,tell,email , adresse ,grade,titrehabilitation,titrethese,titremastere from enseignants ;  ";
    st=cnx.createStatement();
    rst=st.executeQuery(requet1);
    while(rst.next()){     
     
        String nom=rst.getString("nom");
        String tell=rst.getString("tell");
        String email=rst.getString("email");
        String adresse=rst.getString("adresse");
        String grade=rst.getString("grade");
        String titrehabilitation=rst.getString("titrehabilitation");
        String titrethese=rst.getString("titrethese");
        String titremastere=rst.getString("titremastere"); 
        Document document = new Document(PageSize.A4);
		  document.addAuthor("Mourad Kmimech");
		  document.addTitle("CV");
	        try{
	            PdfWriter.getInstance(document, new FileOutputStream("cv"+nom+".pdf"));
	            document.open();
	            
	            Paragraph p1 = new Paragraph("CV");
	            DottedLineSeparator dottedline = new DottedLineSeparator();
	            dottedline.setOffset(-2);
	            dottedline.setGap(2f);
	            p1.add(dottedline);
	            Paragraph p2 = new Paragraph("Information Personnelles");
	            Paragraph p3 = new Paragraph("Nom & prénom :  "+nom);
	            Paragraph p4 = new Paragraph("grade :  "+grade);
	            Paragraph p5 = new Paragraph("Contacts  ");
	            Paragraph p6 = new Paragraph("e-mail :  "+email);
	            Paragraph p7 = new Paragraph("telephone :  "+tell);
	            Paragraph p8 = new Paragraph("Adresse :  "+adresse);  
	            Paragraph p9 = new Paragraph("Formations et diplomes:  ");
	            Paragraph p10 = new Paragraph("habilitations :  "+titrehabilitation);

	            Paragraph p11 = new Paragraph("titrethese:  "+titrethese);
	            Paragraph p12 = new Paragraph("titremastere :  "+titrehabilitation);
	            
					document.add(p1);
	            document.add(p2);
	            document.add(p3);
	            document.add(p4);
	            document.add(p5);
	            document.add(p6);
	            document.add(p7);
	            document.add(p8);
	            document.add(p9);
	            document.add(p10);
	            document.add(p11);
	            document.add(p12);
	            
	        }
	        catch(Exception e){
	            System.out.println(e);
	        }
	        document.close();
	    }
	
		 
     
 
}catch(Exception e){
	
}



%>
</body>

 <!--  <dialog id="favDialog" hidden>
  <form method="dialog">
    <section>
      <p><label for="enseignant"><h3>Enseignant ajouté avec succée</h3></label>
        </p>
    </section>
    <menu>
      <button id="cancel" type="reset">Annuler</button>
      <button type="submit">Confirmer</button>
    </menu>
  </form>
</dialog> -->


</html>
